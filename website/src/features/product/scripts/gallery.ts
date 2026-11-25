export function initGallery(): void {
  document.querySelectorAll<HTMLElement>('[data-screenshot]').forEach((wrapper) => {
    const image = wrapper.querySelector('img');
    const link = wrapper.querySelector('a');
    const failure = wrapper.querySelector<HTMLElement>('.image-failure');
    const showError = () => {
      if (failure) failure.hidden = false;
      if (link) link.hidden = true;
    };
    image?.addEventListener('error', showError);
    wrapper.querySelector('[data-retry-image]')?.addEventListener('click', () => {
      if (!image) return;
      if (failure) failure.hidden = true;
      if (link) link.hidden = false;
      image.src = image.currentSrc || image.src;
    });
    if (image?.complete && image.currentSrc && !image.naturalWidth) showError();
  });
  document.querySelectorAll<HTMLElement>('[data-gallery]').forEach((gallery) => {
    gallery.querySelectorAll<HTMLElement>('[data-gallery-controls]').forEach((controls) => {
      controls.hidden = false;
    });
    const items = [...gallery.querySelectorAll<HTMLElement>('[data-gallery-item]')];
    const buttons = gallery.querySelectorAll<HTMLButtonElement>('[data-gallery-filter]');
    buttons.forEach((button) =>
      button.addEventListener('click', () => {
        const filter = button.dataset.galleryFilter;
        buttons.forEach((other) => other.setAttribute('aria-pressed', String(other === button)));
        items.forEach((item) => {
          item.hidden = filter !== 'all' && item.dataset.group !== filter;
        });
        const output = gallery.querySelector<HTMLOutputElement>('[data-gallery-count]');
        if (output)
          output.value = `${String(items.filter((item) => !item.hidden).length).padStart(2, '0')} / ${String(items.length).padStart(2, '0')}`;
      }),
    );
  });
  const dialog = document.querySelector<HTMLDialogElement>('#screenshot-dialog');
  if (!dialog || typeof dialog.showModal !== 'function') return;
  const image = dialog.querySelector<HTMLImageElement>('[data-dialog-image]');
  const caption = dialog.querySelector<HTMLElement>('[data-dialog-caption]');
  const count = dialog.querySelector<HTMLElement>('[data-dialog-count]');
  const error = dialog.querySelector<HTMLElement>('[data-dialog-error]');
  let links: HTMLAnchorElement[] = [];
  let index = 0;
  let opener: HTMLAnchorElement | null = null;
  const display = () => {
    const link = links[index];
    if (!link || !image) return;
    const label = link.dataset.imageLabel || link.querySelector('img')?.alt || 'Kuymo';
    if (caption) caption.textContent = label;
    if (count) count.textContent = `${index + 1} / ${links.length}`;
    if (error) error.hidden = true;
    image.hidden = false;
    image.alt = label;
    image.src = link.href;
    dialog.dataset.loading = 'true';
    dialog
      .querySelectorAll<HTMLButtonElement>('[data-dialog-previous], [data-dialog-next]')
      .forEach((button) => {
        button.disabled = links.length < 2;
      });
  };
  const move = (step: number) => {
    index = (index + step + links.length) % links.length;
    display();
  };
  image?.addEventListener('load', () => {
    delete dialog.dataset.loading;
  });
  image?.addEventListener('error', () => {
    delete dialog.dataset.loading;
    image.hidden = true;
    if (error) error.hidden = false;
  });
  document.querySelectorAll<HTMLAnchorElement>('[data-gallery-link]').forEach((link) =>
    link.addEventListener('click', (event) => {
      // Preserve browser actions such as opening the source in a new tab.
      if (event.ctrlKey || event.metaKey || event.shiftKey || event.altKey) return;
      event.preventDefault();
      opener = link;
      const gallery = link.closest('[data-gallery]');
      links = gallery
        ? [
            ...gallery.querySelectorAll<HTMLAnchorElement>(
              '[data-gallery-item]:not([hidden]) [data-gallery-link]',
            ),
          ]
        : [link];
      index = Math.max(0, links.indexOf(link));
      display();
      dialog.showModal();
      document.documentElement.classList.add('dialog-open');
    }),
  );
  dialog.querySelector('[data-dialog-close]')?.addEventListener('click', () => dialog.close());
  dialog.querySelector('[data-dialog-previous]')?.addEventListener('click', () => move(-1));
  dialog.querySelector('[data-dialog-next]')?.addEventListener('click', () => move(1));
  dialog.addEventListener('click', (event) => {
    if (event.target === dialog) {
      const box = dialog.getBoundingClientRect();
      if (
        event.clientX < box.left ||
        event.clientX > box.right ||
        event.clientY < box.top ||
        event.clientY > box.bottom
      )
        dialog.close();
    }
  });
  dialog.addEventListener('close', () => {
    document.documentElement.classList.remove('dialog-open');
    opener?.focus({ preventScroll: true });
  });
  dialog.addEventListener('keydown', (event) => {
    if (event.key !== 'ArrowLeft' && event.key !== 'ArrowRight') return;
    event.preventDefault();
    const step = event.key === 'ArrowRight' ? 1 : -1;
    move(document.documentElement.dir === 'rtl' ? -step : step);
  });
}
