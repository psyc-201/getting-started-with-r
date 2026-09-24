# Getting started with R, RStudio, and GitHub

Starter repository for **PSYC 201A** (UC San Diego). Work through this before the
first lab. When you are done you will have:

- R and RStudio installed
- GitHub Desktop installed and connected to your GitHub account
- Your own copy of this repository on your laptop
- One Quarto document that loads the tidyverse, and reads a data file with `here()`
- One commit of your own, pushed to GitHub

Everything here is point-and-click. **You do not need to use the terminal.**

> Already comfortable with R, git, and the command line? Skip to
> [Part 3](#part-3-render-the-document), or see the
> [201 Fundamentals Workshop](https://psyc-201.github.io/fundamentals-workshop/)
> for the terminal-based setup (Homebrew, `gh`, Python, Quarto). We will cover
> JavaScript and other tools later in the quarter.

---

## Part 1. Install the software

Detailed, platform-by-platform instructions are in
**[docs/install-guide.md](docs/install-guide.md)**. The short version:

| What | Where | Notes |
|---|---|---|
| **R** | <https://cloud.r-project.org/> | Install this **first**. R is the language. |
| **RStudio Desktop** | <https://posit.co/download/rstudio-desktop/> | The free version. This is the window you actually work in. |
| **GitHub account** | <https://github.com/join> | Use an email you will keep after graduation. |
| **GitHub Desktop** | <https://desktop.github.com/> | Sign in with the account you just made. |

R and RStudio are two different programs. You install both, but you only ever
open RStudio.

## Part 2. Make your own copy

You will work in **your own copy** of this repository, under your own GitHub
account. You can commit and push to it freely; nothing you do affects the class
copy.

1. At the top of [this repository's GitHub page](https://github.com/psyc-201/getting-started-with-r),
   click the green **Use this template** button, then **Create a new repository**.
2. Owner: **your own account**. Name it `getting-started-with-r`, leave it
   **Public**, and click **Create repository**.
3. You are now looking at *your* copy — the header reads
   `yourname/getting-started-with-r`. Everything from here on happens there.
4. Click **Code** → **Open with GitHub Desktop**.
5. GitHub Desktop asks where to put the folder. Somewhere like `Documents/GitHub`
   is a good choice. Avoid folders synced by Dropbox, Google Drive, or OneDrive —
   they fight with git.
6. Click **Clone**.
7. Post the link to your copy in the course forum so we know where to find it.

Step-by-step version, including what to do when it goes sideways:
**[docs/github-desktop.md](docs/github-desktop.md)**.

## Part 3. Render the document

Find the folder and **double-click `getting-started-with-r.Rproj`**. That opens
RStudio *inside this project* — which is what makes the file path in the
document work on your computer and on everyone else's.

Then open **`getting-started.qmd`** from the Files pane (bottom right) and click
**Render**. The first time, you will need to run the
`install.packages(c("tidyverse", "here"))` chunk by hand — click the green arrow
at its top right and wait 5–15 minutes.

If the document renders and shows you 48 rows of data, you are set up correctly.

Quarto is the authoring tool we use for every assignment this quarter, and it
comes bundled with RStudio. The course textbook covers it in
[Experimentology, Appendix C](https://experimentology.io/102-rmarkdown.html)
— worth reading once you have this working.

## Part 4. Make a change and commit it

1. Put your name in the `author:` line at the top of `getting-started.qmd`, and
   save (`Cmd+S` / `Ctrl+S`).
2. Switch to GitHub Desktop. Your change is listed on the left, old and new
   lines side by side.
3. Write a short summary in the box at the bottom left, e.g. `Add my name`.
4. Click **Commit to main**, then **Push origin**.
5. Reload your repository page on github.com. Your change is there.

That loop — *edit, save, commit, push* — is the whole workflow for the quarter.

## What is in this repository

```
getting-started-with-r/
├── getting-started-with-r.Rproj   open this to start work
├── getting-started.qmd            load packages, load data with here()
├── data/
│   └── example_rt_data.csv        48 rows of simulated reaction-time data
└── docs/
    ├── install-guide.md           installing R, RStudio, GitHub Desktop
    ├── github-desktop.md          clone, commit, push, and the vocabulary
    └── troubleshooting.md         the errors everyone hits
```

The data in `data/example_rt_data.csv` are **simulated**, not real. They are
shaped like a Stroop task (congruent vs. incongruent trials, children vs.
adults) so they look like something you might actually analyze.

## Stuck?

Read **[docs/troubleshooting.md](docs/troubleshooting.md)** first — it covers
the handful of errors that account for nearly every problem. If that does not
help, post the **exact** error message in the course forum. "It doesn't work" is
much harder to help with than a pasted error.
