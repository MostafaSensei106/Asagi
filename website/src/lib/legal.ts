import { getCollection, type CollectionEntry } from 'astro:content';

export type LegalEntry = CollectionEntry<'legal'>;

export interface LegalDocument {
  /** Content collection id, e.g. `kuymo/privacy`. */
  id: string;
  appId: string;
  documentId: string;
  /** Human label derived from the file name, e.g. `Privacy Policy`. */
  label: string;
  /** Site-root-relative path, e.g. `/kuymo/privacy`. */
  href: string;
  entry: LegalEntry;
}

export interface LegalApp {
  appId: string;
  name: string;
  description: string;
  order: number;
  documents: LegalDocument[];
  /** True when every document for the app is still marked as a draft. */
  draft: boolean;
}

const DOCUMENT_LABELS: Record<string, string> = {
  privacy: 'Privacy Policy',
  terms: 'Terms & Conditions',
};

const DOCUMENT_ORDER = ['privacy', 'terms'];

function titleCase(value: string): string {
  return value
    .replace(/[-_]+/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
    .replace(/\b\w/g, (character) => character.toUpperCase());
}

export function getDocumentLabel(documentId: string): string {
  return DOCUMENT_LABELS[documentId] ?? titleCase(documentId);
}

/** Split a collection id such as `kuymo/privacy` into its two parts. */
export function splitLegalId(id: string): { appId: string; documentId: string } {
  const segments = id.split('/').filter(Boolean);
  const documentId = segments.pop() ?? id;
  const appId = segments.join('/') || 'app';

  return { appId, documentId };
}

function compareDocuments(left: LegalDocument, right: LegalDocument): number {
  const leftRank = DOCUMENT_ORDER.indexOf(left.documentId);
  const rightRank = DOCUMENT_ORDER.indexOf(right.documentId);

  if (leftRank !== rightRank) {
    if (leftRank === -1) return 1;
    if (rightRank === -1) return -1;
    return leftRank - rightRank;
  }

  return left.documentId.localeCompare(right.documentId);
}

/**
 * Load legal documents, newest app order first and with drafts excluded from
 * public listings unless `includeDrafts` is set.
 */
export async function getLegalDocuments(
  options: { includeDrafts?: boolean } = {},
): Promise<LegalDocument[]> {
  const entries = await getCollection(
    'legal',
    ({ data }) => options.includeDrafts === true || !data.draft,
  );

  return entries
    .map((entry): LegalDocument => {
      const { appId, documentId } = splitLegalId(entry.id);

      return {
        id: entry.id,
        appId,
        documentId,
        label: getDocumentLabel(documentId),
        href: `/${appId}/${documentId}`,
        entry,
      };
    })
    .sort(
      (left, right) =>
        left.entry.data.order - right.entry.data.order ||
        left.appId.localeCompare(right.appId) ||
        compareDocuments(left, right),
    );
}

/** Group documents into the apps they belong to. */
export async function getLegalApps(
  options: { includeDrafts?: boolean } = {},
): Promise<LegalApp[]> {
  const documents = await getLegalDocuments(options);
  const apps = new Map<string, LegalApp>();

  for (const document of documents) {
    const existing = apps.get(document.appId);

    if (existing) {
      existing.documents.push(document);
      existing.draft = existing.draft && document.entry.data.draft;
      continue;
    }

    apps.set(document.appId, {
      appId: document.appId,
      name: document.entry.data.app,
      description: document.entry.data.appDescription,
      order: document.entry.data.order,
      documents: [document],
      draft: document.entry.data.draft,
    });
  }

  return [...apps.values()]
    .map((app) => ({ ...app, documents: [...app.documents].sort(compareDocuments) }))
    .sort((left, right) => left.order - right.order || left.appId.localeCompare(right.appId));
}

/** Find one document by app and document slug. */
export async function findLegalDocument(
  appId: string,
  documentId: string,
): Promise<LegalDocument | undefined> {
  const documents = await getLegalDocuments({ includeDrafts: true });

  return documents.find(
    (document) => document.appId === appId && document.documentId === documentId,
  );
}
