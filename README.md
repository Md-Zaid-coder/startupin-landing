# Startup in — Landing Page

> **Ideas. Insights. Impact.** — Premium storytelling & branding platform for startup founders.

![HTML](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![TailwindCSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Web3Forms](https://img.shields.io/badge/Web3Forms-6366F1?style=for-the-badge&logo=web3dotjs&logoColor=white)

---

## 🚀 Live Demo

👉 **[View Live Page](https://YOUR_USERNAME.github.io/startupin-landing)**

---

## 📌 Project Overview

**Startup in** is a premium dark-theme landing page for a startup storytelling & branding agency. The page is designed to attract early-stage founders, convert them into story submissions, and build brand credibility through a curated editorial identity.

Built as a **single-file production-ready landing page** with zero build tools required.

---

## ✨ Features

| Feature | Details |
|---|---|
| 🎨 **Dark glassmorphic UI** | Custom dark theme with glass-panel cards, backdrop-blur, and glow shadows |
| 📐 **Responsive layout** | Mobile-first, fluid grid, adaptive typography |
| 🔔 **Contact modal** | Animated glassmorphic popup triggered by any CTA on the page |
| 📬 **Live form submission** | Integrated with [Web3Forms](https://web3forms.com) — real email delivery, no backend needed |
| 🛡️ **Anti-spam** | Honeypot field built into the form |
| 📊 **CTA source tracking** | Every call-to-action passes its source to the form via `openBookingModal(source)` |
| ⚡ **Zero dependencies** | Single `.html` file — no npm, no build step, no server |

---

## 🏗️ Tech Stack

- **HTML5** — Semantic, accessible markup
- **Tailwind CSS v3** — Utility-first styling via CDN (no build required)
- **Vanilla JavaScript (ES2022)** — Async/await form handling, modal state management
- **Google Fonts** — Plus Jakarta Sans (300–900 weight range)
- **Font Awesome 6** — Icon library
- **Web3Forms API** — Serverless form backend (`https://api.web3forms.com/submit`)

---

## 📂 Project Structure

```
startupin-landing/
├── index.html        ← Complete single-file landing page
└── README.md         ← This file
```

---

## 🔧 How It Works

### Form Submission Flow
```
User clicks any CTA
      ↓
openBookingModal(source)        ← stamps hidden cta_source field
      ↓
Glassmorphic modal opens
      ↓
User fills name, email, startup/LinkedIn, story
      ↓
handleFormSubmit(event)
      ↓
POST → https://api.web3forms.com/submit
      ↓
✅ Success message shown  /  ❌ Inline error displayed
```

### CTA Source Tracking
Each button passes a source identifier so you know exactly which section drove the conversion:
```javascript
openBookingModal('hero')           // Hero section CTA
openBookingModal('founder-pack')   // Founder Pack offer
openBookingModal('editorial')      // Editorial section
openBookingModal('sticky-cta')     // Sticky header button
```

---

## 🚀 Deploy in 30 Seconds

**Option 1 — GitHub Pages (free hosting)**
1. Fork this repo
2. Go to **Settings → Pages → Source: main / root**
3. Your page is live at `https://YOUR_USERNAME.github.io/startupin-landing`

**Option 2 — Netlify Drop**
1. Go to [netlify.com/drop](https://app.netlify.com/drop)
2. Drag `index.html` into the browser
3. Live URL generated instantly

**Option 3 — Local preview**
```bash
# No server needed — just open the file
open index.html        # macOS
start index.html       # Windows
```

---

## 🎯 Built For

This project demonstrates:
- **Front-end engineering** without a framework
- **Third-party API integration** (Web3Forms) with proper async error handling
- **UX/conversion design** — glassmorphic modals, CTA architecture, trust signals
- **Production discipline** — zero console errors, honeypot anti-spam, inline loading states

---

## 👤 Author

**Mohammad Zaid**  
[LinkedIn](https://linkedin.com/in/YOUR_LINKEDIN) · [GitHub](https://github.com/YOUR_USERNAME)

---

## 📄 License

MIT — Free to use, modify, and deploy.
