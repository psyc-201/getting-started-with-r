# Getting started with R, RStudio, and GitHub

Starter repository for **PSYC 201A** (UC San Diego). Work through this before the
first lab. When you are done you will have:

- R and RStudio installed
- GitHub Desktop installed and connected to your GitHub account
- Your own copy of this repository on your laptop
- A script that loads the tidyverse, reads a data file, and saves a figure
- One commit of your own, pushed to GitHub

Everything here is point-and-click. **You do not need to use the terminal.**

> Already comfortable with R, git, and the command line? Skip to
> [Part 3](#part-3-run-the-scripts), or see the
> [201 Fundamentals Workshop](https://psyc-201.github.io/fundamentals-workshop/)
> for the terminal-based setup (Homebrew, `gh`, Python, Quarto). We will cover
> JavaScript and other tools later in the quarter.

---

## Part 1. Install the software

Detailed, platform-by-platform instructions with screenshots-worth-of-detail are
in **[docs/install-guide.md](docs/install-guide.md)**. The short version:

| What | Where | Notes |
|---|---|---|
| **R** | <https://cloud.r-project.org/> | Install this **first**. R is the language. |
| **RStudio Desktop** | <https://posit.co/download/rstudio-desktop/> | The free version. This is the window you actually work in. |
| **GitHub account** | <https://github.com/join> | Use an email you will keep after graduation. |
| **GitHub Desktop** | <https://desktop.github.com/> | Sign in with the account you just made. |

R and RStudio are two different programs. You install both, but you only ever
open RStudio.

## Part 2. Get your own copy of this repository

1. At the top of [this repository's GitHub page](https://github.com/psyc-201/getting-started-with-r),
   click the green **Use this template** button, then **Create a new repository**.
2. Name it `getting-started-with-r`, leave it **Public**, and click
   **Create repository**. You now own a copy.
3. On *your* new repository's page, click **Code** → **Open with GitHub Desktop**.
4. GitHub Desktop will ask where to put the folder. Somewhere like
   `Documents/GitHub` is a good choice. Avoid folders synced by Dropbox,
   Google Drive, or OneDrive — they fight with git.
5. Click **Clone**.

Step-by-step version, including what to do when it goes sideways:
**[docs/github-desktop.md](docs/github-desktop.md)**.

## Part 3. Run the scripts

In GitHub Desktop, click **Open the repository in your external editor**, or just
find the folder and **double-click `getting-started-with-r.Rproj`**. That opens
RStudio *inside this project* — which is what makes the file paths in the
scripts work on your computer and on everyone else's.

Then open and run these three files in order (the Files pane, bottom right):

| File | What it does | How long |
|---|---|---|
| `01-install-packages.R` | Installs the tidyverse. Run once, ever. | 5–15 min |
| `02-check-your-setup.R` | Prints a checklist of what is working. | seconds |
| `03-first-script.R` | Reads data, summarizes it, saves a plot. | seconds |

To run a whole file, click **Source** at the top of the editor pane. To run one
line at a time — better for learning — put your cursor on a line and press
`Cmd+Enter` (Mac) or `Ctrl+Enter` (Windows).

When `02-check-your-setup.R` prints `OK` on every line, you are set up correctly.

## Part 4. Make a change and commit it

The bottom of `03-first-script.R` has three small exercises. Do at least one,
then:

1. Save the file (`Cmd+S` / `Ctrl+S`).
2. Switch to GitHub Desktop. Your changes are listed on the left, with the
   old and new lines side by side.
3. Write a short summary in the box at the bottom left, e.g.
   `Plot accuracy instead of RT`.
4. Click **Commit to main**, then **Push origin**.
5. Reload your repository page on github.com. Your change is there.

That loop — *edit, save, commit, push* — is the whole workflow for the quarter.

## What is in this repository

```
getting-started-with-r/
├── getting-started-with-r.Rproj   open this to start work
├── 01-install-packages.R          run once
├── 02-check-your-setup.R          run when something feels broken
├── 03-first-script.R              your first analysis
├── data/
│   └── example_rt_data.csv        48 rows of simulated reaction-time data
├── figures/                       your saved plot lands here
└── docs/
    ├── install-guide.md           installing R, RStudio, GitHub Desktop
    ├── github-desktop.md          clone, commit, push, and the vocabulary
    └── troubleshooting.md         the errors everyone hits
```

The data in `data/example_rt_data.csv` are **simulated**, not real. They are
shaped like a Stroop task (congruent vs. incongruent trials, children vs.
adults) so the plots look like something you might actually report.

## Stuck?

Read **[docs/troubleshooting.md](docs/troubleshooting.md)** first — it covers
the handful of errors that account for nearly every problem. If that does not
help, post the **exact** error message in the course forum, along with the
output of running `02-check-your-setup.R`. "It doesn't work" is much harder to
help with than a pasted error.
