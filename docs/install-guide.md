# Installing R, RStudio, and GitHub Desktop

Budget about 30 minutes, most of it waiting for downloads. Do the steps in
order: **R first, then RStudio.**

---

## 1. R (the language)

Go to <https://cloud.r-project.org/> and pick your operating system.

### macOS

1. Click **Download R for macOS**.
2. Two `.pkg` files are listed. Pick the one that matches your chip:
   - **Apple silicon** (M1/M2/M3/M4) → the `arm64` package
   - **Intel** → the `x86_64` package
   - Not sure? Click the Apple menu → **About This Mac**. If it says "Apple
     M-something", you have Apple silicon.
3. Open the downloaded `.pkg` and click through the installer.

### Windows

1. Click **Download R for Windows** → **base** → **Download R x.x.x for Windows**.
2. Run the `.exe` and accept the defaults.

### Checking

You will not open R directly, so there is nothing to check yet — rendering
`getting-started.qmd` will confirm it for you in a few minutes.

---

## 2. RStudio Desktop (the program you actually use)

1. Go to <https://posit.co/download/rstudio-desktop/>.
2. Scroll past the "Install R" step (you just did that) and download
   **RStudio Desktop** — the free, open-source version. You never need to pay
   for anything in this course.
3. macOS: drag RStudio into your Applications folder. Windows: run the installer.
4. Open RStudio. You should see a window with several panes, one of which shows
   a `>` prompt. That pane is the **Console**.

Type `1 + 1` at the console prompt and press Enter. If you get `[1] 2`, R and
RStudio are talking to each other.

### The four panes, briefly

- **Console** (left or bottom left): where code actually runs. Things you type
  here are not saved.
- **Source/Editor** (top left): where you write scripts that *are* saved. If you
  do not see it, it appears as soon as you open a `.R` file.
- **Environment** (top right): the objects currently in memory.
- **Files / Plots / Packages / Help** (bottom right): your project's files, and
  where your plots appear.

---

## 3. A GitHub account

1. Sign up at <https://github.com/join>.
2. Use an email address you will still have after you graduate — your GitHub
   account is a long-term professional artifact.
3. Pick a username you are happy for a future employer or collaborator to see.
   Your real name, or a close variant, is the safest choice.
4. Turn on two-factor authentication when prompted. GitHub requires it, and
   doing it now avoids being locked out mid-quarter.

Tell us your username when the course asks for it, so we can add you to the
[psyc-201 organization](https://github.com/psyc-201).

---

## 4. GitHub Desktop

1. Download from <https://desktop.github.com/> and install it.
2. Open it and choose **Sign in to GitHub.com**. A browser window will open —
   authorize it, and it will hand you back to the app.
3. When it asks for your name and email for commits, use your real name and the
   email attached to your GitHub account. This is how your work gets credited
   to you.

That is the whole setup. Head back to the
[README](../README.md#part-2-get-your-own-copy-of-this-repository) to get your
copy of this repository.

---

## Optional, but recommended later

- **Quarto** — the authoring tool for reports that mix text, code, and figures,
  and what every assignment this quarter is written in. **It comes bundled with
  RStudio**, so you do not need to install it separately; the **Render** button
  appears whenever you open a `.qmd` file. If you want it at the command line
  too, get it from <https://quarto.org/docs/get-started/>. The course textbook
  covers it in [Experimentology, Appendix C](https://experimentology.io/102-rmarkdown.html).
- **A newer R than you have.** If your R is older than 4.2 (run
  `R.version.string` in the Console to check), install the current version from
  the same link above. Installing a new R does not remove the old one, and you
  may need to reinstall the tidyverse and here afterward.

## A note on university-managed laptops

If your laptop is managed by an IT department and blocks installers, you can do
everything in this repository in the browser with
[Posit Cloud](https://posit.cloud/) (free tier) — but tell the instructor, since
the GitHub Desktop steps will differ.
