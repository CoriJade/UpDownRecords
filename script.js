// Mobile menu
const toggle = document.querySelector('.menu-toggle');
const nav = document.querySelector('.site-nav');
toggle.addEventListener('click', () => {
  const open = nav.classList.toggle('open');
  toggle.setAttribute('aria-expanded', open);
});
nav.querySelectorAll('a').forEach(a => a.addEventListener('click', () => nav.classList.remove('open')));

// Footer year
document.getElementById('year').textContent = new Date().getFullYear();

// Contact form
// GitHub Pages can't process forms, so by default this opens the visitor's email app
// with the message pre-filled. To have submissions emailed automatically instead,
// sign up for a free form service (e.g. Formspree) and put its endpoint here:
const FORM_ENDPOINT = ''; // e.g. 'https://formspree.io/f/xxxxxxx'

const form = document.getElementById('contact-form');
const status = form.querySelector('.form-status');
form.addEventListener('submit', async (e) => {
  e.preventDefault();
  const data = new FormData(form);

  if (FORM_ENDPOINT) {
    status.textContent = 'Sending…';
    try {
      const res = await fetch(FORM_ENDPOINT, { method: 'POST', body: data, headers: { Accept: 'application/json' } });
      if (!res.ok) throw new Error();
      form.reset();
      status.textContent = 'Thanks for submitting!';
    } catch {
      status.textContent = 'Something went wrong. Please email us directly.';
    }
    return;
  }

  const to = form.dataset.email;
  const subject = encodeURIComponent(`Website inquiry from ${data.get('name')}`);
  const body = encodeURIComponent(`${data.get('message') || ''}\n\n— ${data.get('name')} (${data.get('email')})`);
  window.location.href = `mailto:${to}?subject=${subject}&body=${body}`;
  status.textContent = 'Opening your email app…';
});
