# SiamSarker.github.io — CLAUDE.md

Personal portfolio website for **Md Siam Hossain Sarker** (Software Engineer).  
Live at: `https://siamsarker.me` — deployed via GitHub Pages (branch: `master`).  
Current working branch: `new-design`.

---

## Project Structure

```
/
├── index.html                  # Single-page portfolio (all sections inline, ~1230 lines)
├── assets/
│   ├── css/style.css           # All custom styles (~1673 lines), uses CSS variables
│   ├── img/
│   │   ├── profile/            # Profile photo (siam_passport.jpg)
│   │   ├── skills/             # Tech logo PNGs/SVGs used in Skills section
│   │   ├── projects/           # Project screenshot PNGs used in Projects section
│   │   └── favicon/            # Full favicon set (apple, android, ms, manifest)
│   ├── resume/
│   │   ├── resume.html         # HTML resume (primary — displayed in iframe)
│   │   └── Md_Siam_Hossain_Sarker_Resume.pdf  # PDF (download only)
│   └── vendor/typed.js/        # typed.min.js (local copy)
├── old/                        # Archived previous portfolio version (ignore)
├── examples/                   # preview.JPG used in og:image meta tag
├── sitemap.xml
├── robots.txt
├── CNAME                       # siamsarker.me
└── .github/workflows/pages-deploy.yml
```

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | None — pure static HTML/CSS/JS |
| CSS base | Materialize 0.95.3 (CDN) + custom `style.css` |
| Icons | Font Awesome 4.3.0 (CDN) |
| Fonts | Inter + Poppins via Google Fonts |
| JS libs | jQuery 1.11.2 (CDN), typed.js (local) |
| Analytics | GA4 `G-EZLDYRHDMG` + GTM `GTM-PGZH8HT` (both active — causes double-counting) |
| Hosting | GitHub Pages, custom domain via CNAME |

---

## Portfolio Sections (index.html)

| Section ID | Description |
|---|---|
| `#intro` | Hero — name, animated typing, LinkedIn/GitHub buttons |
| `#about` | Bio card + grouped skill tags |
| `#experience` | Vertical timeline (3 entries) |
| `#projects` | 9 flip-card project cards |
| `#skills` | Logo grids in 5 categories |
| `#education` | UIU degree card |
| `#contact` | Phone, email, GitHub, LinkedIn grid |
| `#resume` | Download PDF button + iframe showing `resume.html` |

---

## Experience (chronological, newest first)

1. **WebAlive** — Software Engineer · Jan 2026 – Present · Melbourne, Australia (Remote)
   - Hykmah SSO (Java, Keycloak, custom OIDC/PKCE), FastAPI + MongoDB provisioning service
   - Exsited & WebCommander backends (Grails), Umerang (C#), MariaDB

2. **Bit Mascot (Pvt.) Ltd.** — Software Engineer · May 2023 – Dec 2025 · Dhaka, Bangladesh
   - Laravel/Node.js REST APIs, GIS spatial queries, RabbitMQ pipelines, WebSockets
   - Projects: Mining Hub, Mining Bull, Reed Graduation, Nintendo, Locum West, Regional Tech Hub

3. **United International University** — Undergraduate TA · Nov 2021 – May 2023

---

## Projects in the Portfolio

### Professional
| Card | Stack | Live URL |
|---|---|---|
| Hykmah Ecosystem | Java, Keycloak, FastAPI, MongoDB, Grails, C# | — |
| Mining Hub | Node.js, Express.js, PostgreSQL | mininghub.com/home |
| Reed Graduation | CakePHP, MySQL, jQuery, RabbitMQ | reedevents.com.au |
| Nintendo Repair & Returns | Laravel, PHP, Autobill SDK | internal |
| Mining Bull | Laravel, PHP, MySQL | miningbull.com.au |
| Locum West Portal | Laravel, MySQL, SendGrid | locumwest.com.au |
| Regional Tech Hub | Laravel, PHP, SendGrid | regionaltechhub.org.au |

### Academic
| Card | Stack | Links |
|---|---|---|
| Decentralized Vehicle (Car-Story) | Solidity, Ethereum, React | GitHub |
| AgroTech e-Market | NestJS, React Native, PHP | GitHub (3 repos) |
| Multi-Client Server System | Java, JavaFX, Sockets | GitHub + YouTube |

---

## resume.html — Key Content

The HTML resume at `assets/resume/resume.html` is the **single source of truth** for resume content — not the PDF (PDF is download-only). Sections:

- Professional Summary
- Work Experience (WebAlive → Bit Mascot → UIU TA → UIU App Forum → BDApps → IQAC)
- Education (BSc CSE, UIU, CGPA 3.90/4.00, 2019–2023)
- Skills (Languages, Backend, Identity & Auth, Databases, Async & Messaging, Frontend, Blockchain, Tools)
- Professional Projects (Hykmah, Log Archiver, Mining Hub/Bull, Reed, Locum West, Nintendo, RTH)
- Academic Projects (Car-Story, AgroTech, Railway Reservation, Project Protibaad)
- Publications (IEEE TENSYMP 2024, Springer LNNS Vol.665 ICISS 2023)
- Honours & Achievements
- Certifications & Workshops
- Languages (Bengali native, English IELTS 6.0 / B2)
- Membership (IEEE, EMK Center)
- References (3 referees)

**Log Archiver** project (FastAPI + DuckDB + Parquet + RabbitMQ, 2025) is in resume.html but NOT yet in index.html's projects section.

---

## Skills — Image Assets

All skill logos live in `assets/img/skills/`. Currently mapped in index.html:

| Skill | File |
|---|---|
| PHP | `php.png` |
| JavaScript | `javascript.png` |
| TypeScript | `Typescript_logo.png` |
| Python | `Python-logo.png` |
| Java | `java.png` |
| C/C++ | `c.png` |
| Node.js | `node.png` |
| Express.js | `Express.png` |
| Laravel | `laravel.png` |
| CakePHP | `cakephp.png` |
| NestJS | `nestjs.png` |
| FastAPI | `fastapi.svg` |
| Socket | `socket.png` |
| Keycloak | `keycloak.png` |
| React | `react.png` |
| React Native | `reactnative.png` |
| HTML5 | `html5.png` (also old `html5-300x300.jpg` at `assets/img/`) |
| CSS3 | `css3.png` (also old `css3-300x300.jpg` at `assets/img/`) |
| Materialize | `materialize.png` |
| JavaFX | `javafx.png` |
| MySQL | old `mysql-logo-1-300x300.jpg` at `assets/img/` |
| PostgreSQL | old `postgresql-logo.png` at `assets/img/` |
| MongoDB | `mongodb.svg` |
| DuckDB | `duckdb.png` |
| Apache Parquet | `parquet.svg` |
| RabbitMQ | `rabbitmq.svg` |
| Docker | `docker.svg` |
| Git | old `git.png` at `assets/img/` |

---

## Known Issues / Tech Debt

| Issue | Location | Priority |
|---|---|---|
| `viewport` meta missing comma | `index.html:16` | High — breaks mobile layout |
| Double analytics (GA4 + GTM both fire) | `index.html:6,31` | Medium — double-counts pageviews |
| Wrong external link on "Decentralized Vehicle" card | `index.html:706` | Medium — links to mininghub instead |
| Dead `href="#"` on Nintendo card | `index.html:526` | Low |
| Bit Mascot shows "Present" instead of end date | `index.html:328` | Low |
| `mininghub.png` is 1.8 MB | `assets/img/mininghub.png` | Medium — slow load |
| No `loading="lazy"` on images | throughout | Medium |
| Outdated CDNs: Materialize 0.95.3, FA 4.3, jQuery 1.11.2 | `index.html:39,41,1102,1105` | Low |
| `.DS_Store` files not in `.gitignore` | root + assets | Low |
| Old `*-300x300.jpg` files mixed with newer `/skills/` images | `assets/img/` | Low |
| Log Archiver project not in index.html projects section | `index.html` Projects section | Low |
| typed.js strings don't reflect WebAlive/current work | `index.html:1093` | Low |

---

## CSS Design Tokens (style.css :root)

```
--primary-color: #4f46e5  (indigo)
--secondary-color: #06b6d4
--accent-color: #10b981
--warning-color: #f59e0b
--text-primary: #111827
--background-primary: #ffffff
```

Navbar uses `linear-gradient(90deg, #2563eb 0%, #7c3aed 100%)` (blue → purple).

---

## Deployment

- Push to `master` → GitHub Actions (`pages-deploy.yml`) → GitHub Pages
- Custom domain `siamsarker.me` via `CNAME` file
- Google Site Verification: `_qxK8tePiU2fhnwlwnJ7pkDFnj1k2EiKq_cYGy1Cb84`
