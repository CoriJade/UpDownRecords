# Up/Down Records — static site

A copy of updownrecordings.com, rebuilt from the Wix version as plain HTML/CSS/JS so it can be hosted on GitHub Pages.

## 1. Download the images and video (one time)

The site loads everything from the `assets/` folder. To fill it, run this from inside this folder on a Mac or Linux machine (or Git Bash on Windows):

```bash
bash download-assets.sh
```

This saves the logo, the hero video, the About photo and the 15 release covers from Wix into `assets/`. Do this **before** you cancel the Wix plan.

## 2. Put it on GitHub Pages

1. Create a new repository on GitHub (for example `updownrecords-site`).
2. Upload everything in this folder, including the filled `assets/` folder.
3. In the repo, go to **Settings → Pages**, set **Source** to *Deploy from a branch*, pick `main` and `/ (root)`, then click Save.
4. The site goes live at `https://<your-username>.github.io/<repo-name>/` within a minute or two.

### Custom domain (updownrecordings.com)
In **Settings → Pages → Custom domain**, enter `www.updownrecordings.com`. At your domain registrar, add a `CNAME` record for `www` that points to `<your-username>.github.io`. For the bare domain, add `A` records pointing to GitHub's IPs. GitHub's "Managing a custom domain for your GitHub Pages site" help page lists those IPs. Then tick **Enforce HTTPS**.

If the domain is registered through Wix, you'll need to change those DNS records in Wix, or transfer the domain out of Wix.

## Contact form
GitHub Pages can't process form submissions. Out of the box, **Submit** opens the visitor's email app with a message to swin@rainmakerartists.com already filled in.

To have messages emailed to you automatically instead, create a free form at a service such as Formspree and paste its endpoint into `FORM_ENDPOINT` at the top of the contact-form section in `script.js`.

## Files
- `index.html`: page content
- `styles.css`: design (colors, fonts, layout, mobile)
- `script.js`: mobile menu, footer year and contact form
- `download-assets.sh`: pulls the media from Wix
