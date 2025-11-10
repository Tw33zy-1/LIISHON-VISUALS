# LiishonVisuals
LiishonVisuals Photography site

This workspace contains a simple static homepage layout for "LIISHON VISUALS" — a photography website.

Files added:

- `index.html` — the homepage layout (hero, services, portfolio, contact form wired to Formspree).
- `assets/css/styles.css` — styling for the site (white theme, black accents).
- `assets/js/main.js` — small JS to handle the contact form and set the footer year.

Notes and next steps

- The contact form posts to Formspree at: `https://formspree.io/f/mblqjjgo`. Replace the endpoint if you have a different Formspree form.
- Replace placeholder contact details and social links in `index.html` with the photographer's real links (Instagram, WhatsApp, Facebook, TikTok, X, YouTube, email).
- Replace the Unsplash image URLs with your own images for best results (they currently use Unsplash source queries as placeholders).

To preview locally

1. Open `index.html` in a browser (no server required for this static page).
2. Fill and submit the contact form. The page will attempt to send via fetch to the Formspree endpoint and show a success/failure message.

Accessibility & assumptions

- I corrected a few typos from the original request (e.g., "Potrait" -> "Portrait"). If you want exact original spellings, revert them in `index.html`.
- Social icons are simple SVG placeholders; swap them for branded SVGs if desired.

If you want, I can:

- Add a lightbox for portfolio images.
- Add a simple CMS-friendly structure or a build step (e.g., Jekyll, Eleventy, or Next.js).
- Add deploy instructions (GitHub Pages, Netlify, Vercel) and configure a contact redirect after successful form submission.
