/**
 * `BASE_URL` always ends with a slash (`/` for a root deployment and
 * `/repository/` for a GitHub Pages project site). Keep the helpers here so no
 * component has to reason about that detail.
 */
const base = import.meta.env.BASE_URL;

/**
 * Prefix an absolute, site-root-relative path with the configured base path.
 * Use it for every link, asset and redirect so the site works both on a custom
 * domain and under a GitHub Pages sub-path.
 */
export function withBase(path = '/'): string {
  const suffix = path.startsWith('/') ? path : `/${path}`;

  if (base === '/') return suffix;

  const prefix = base.replace(/\/$/, '');

  return suffix === '/' ? `${prefix}/` : `${prefix}${suffix}`;
}

/** Remove the configured base path from a pathname. */
export function stripBase(pathname: string): string {
  if (base === '/') return pathname;

  const prefix = base.replace(/\/$/, '');

  if (pathname === prefix) return '/';
  if (pathname.startsWith(`${prefix}/`)) return pathname.slice(prefix.length);

  return pathname;
}

/** Build an absolute URL from a site-root-relative path. */
export function absoluteUrl(path: string, site: URL | undefined): string {
  return new URL(withBase(path), site ?? 'http://localhost:4321').toString();
}

/** Normalise a pathname to a canonical, trailing-slash-free form. */
export function canonicalPath(pathname: string): string {
  const withoutBase = stripBase(pathname).replace(/\/+$/, '');

  return withoutBase === '' ? '/' : withoutBase;
}
