export function initTheme(): void {
  const root = document.documentElement;
  const button = document.querySelector<HTMLButtonElement>('[data-product-theme]');
  const sync = () => button?.setAttribute('aria-pressed', String(root.classList.contains('dark')));
  button?.addEventListener('click', () => {
    const dark = root.classList.toggle('dark');
    root.style.colorScheme = dark ? 'dark' : 'light';
    try {
      localStorage.setItem('kuymo-theme', dark ? 'dark' : 'light');
    } catch {
      /* Optional storage. */
    }
    sync();
  });
  sync();
  document.querySelectorAll<HTMLDetailsElement>('.floating-header details').forEach((details) => {
    details.addEventListener('toggle', () => {
      if (details.open)
        document
          .querySelectorAll<HTMLDetailsElement>('.floating-header details[open]')
          .forEach((other) => {
            if (other !== details) other.open = false;
          });
    });
  });
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape')
      document
        .querySelectorAll<HTMLDetailsElement>('.floating-header details[open]')
        .forEach((details) => {
          details.open = false;
          details.querySelector('summary')?.focus();
        });
  });
  document.addEventListener('click', (event) => {
    if (!(event.target instanceof Node)) return;
    document
      .querySelectorAll<HTMLDetailsElement>('.floating-header details[open]')
      .forEach((details) => {
        if (!details.contains(event.target as Node)) details.open = false;
      });
  });
}
