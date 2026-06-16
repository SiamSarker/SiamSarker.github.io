# Siam Hossain — Portfolio

> Personal portfolio for **Md Siam Hossain Sarker**, Software Engineer specialising in distributed systems and identity infrastructure.

[![Website](https://img.shields.io/badge/website-siamsarker.me-f59e0b)](https://siamsarker.me)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![LinkedIn](https://img.shields.io/badge/connect-LinkedIn-0f172a)](https://www.linkedin.com/in/siam-sarker/)

**Live**: [siamsarker.me](https://siamsarker.me)

---

## Design

- Dark navy (`#0f172a`) navigation on a light page body, with a single warm amber (`#f59e0b`) accent
- Light / dark mode toggle — persisted in `localStorage`, defaults to `prefers-color-scheme`
- Fully responsive, mobile-first
- Type system: **Inter** (body) · **Outfit** (headings) · **JetBrains Mono** (tech labels)
- Hand-rolled CSS using design tokens — no build step, no framework lock-in

## Stack

| Layer | What it uses |
|---|---|
| Markup | Single static `index.html` |
| Styles | Custom CSS variables (`assets/css/style.css`) |
| JS | Vanilla — dark mode toggle, scroll spy, mobile menu, project card flip |
| Resume | `assets/resume/resume.html` rendered to PDF via headless Chrome |
| CDN libs | Materialize 0.95.3 · Font Awesome 4.3 · jQuery 1.11 · Typed.js · html2pdf |
| Hosting | GitHub Pages with custom domain (`CNAME`) |

## Sections

1. **Hero** — name, tagline, primary / secondary CTAs
2. **About** — bio plus grouped skill tags (Languages · Frameworks · Databases · Identity · Async)
3. **Experience** — vertical timeline (WebAlive · Bit Mascot · UIU)
4. **Projects** — flip-card project cards (Hykmah, Log Archiver, Mining Hub, etc.)
5. **Skills** — logo grids across five categories
6. **Education** — BSc CSE @ UIU
7. **Contact** — phone · email · GitHub · LinkedIn
8. **Resume** — embedded HTML resume with **Download** and **Open in New Tab** actions

## Local development

No build step.

```bash
python3 -m http.server 8000
# open http://localhost:8000
```

Don't open `index.html` directly via `file://` — the resume iframe references an absolute path (`/assets/resume/resume.html`) that only resolves over HTTP.

## Resume

The HTML resume at `assets/resume/resume.html` is the source of truth. After editing it, regenerate the PDF:

```bash
bash scripts/build-resume-pdf.sh
```

The script spins up a local HTTP server, renders the resume in headless Chrome, and writes `assets/resume/Md_Siam_Hossain_Sarker_Resume.pdf`. The output is true vector PDF — text is selectable, links are clickable.

## Deployment

Push to `master` → GitHub Actions (`.github/workflows/pages-deploy.yml`) deploys to GitHub Pages at [siamsarker.me](https://siamsarker.me) (custom domain via `CNAME`).

Current development branch: `new-design`.

## License

MIT — see [LICENSE](./LICENSE).
