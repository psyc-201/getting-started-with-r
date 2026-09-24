# Using GitHub Desktop

Git is a tool for tracking the history of a folder. GitHub is a website that
hosts copies of those folders. GitHub Desktop is a friendly window onto both.
You can do everything in this course without ever typing a git command.

---

## The five words you need

| Word | What it means |
|---|---|
| **repository** ("repo") | A folder whose history git is tracking. This is one. |
| **clone** | Download a copy of a repository, with its history, onto your laptop. |
| **commit** | Save a snapshot of your changes, with a short message saying what you did. |
| **push** | Send your commits up to GitHub so others (and future you) can see them. |
| **pull** | Bring down commits that someone else pushed. |

A commit is not a backup and not a save. You still save files normally
(`Cmd+S`). A commit says: *this set of saves is a coherent step worth naming.*

---

## Forking: getting your own copy

Everyone in the class works from their own **fork** — a copy of the class
repository that belongs to your GitHub account. You have full permission to
commit and push to your fork, and nothing you do there touches the class copy.

1. Open <https://github.com/psyc-201/getting-started-with-r>.
2. Click **Fork** (top right) → **Create fork**. Leave the name and description
   as they are, and leave "Copy the main branch only" checked.
3. GitHub sends you to your copy. Check the header: it should read
   **`yourname/getting-started-with-r`**, with *forked from psyc-201/…* in small
   text underneath. If it still says `psyc-201/…`, you are on the class copy —
   go back and fork.
4. On *your* copy, click **Code** → **Open with GitHub Desktop**. Your browser
   will ask permission to open the app — allow it.
5. GitHub Desktop shows a **Clone a repository** dialog with a local path.
   - Good: `~/Documents/GitHub/getting-started-with-r`
   - Bad: anywhere inside Dropbox, Google Drive, OneDrive, or iCloud Desktop.
     Those services sync files underneath git and cause strange conflicts.
6. Click **Clone**.
7. GitHub Desktop may then ask **"How are you planning to use this fork?"**
   Choose **For my own purposes**. The other option, "To contribute to the
   parent project", aims your pushes at `psyc-201/getting-started-with-r`, where
   you do not have write access — you would hit a permissions error the first
   time you push.

If you picked the wrong option, you can fix it: **Repository** menu →
**Repository settings** → **Fork behavior** → *For my own purposes*.

You now have the folder on your laptop. Click **Open the repository in your
external editor**, or find the folder and double-click
`getting-started-with-r.Rproj`, which opens it in RStudio.

---

## The everyday loop

Once per work session:

1. **Pull** — click **Fetch origin** at the top of GitHub Desktop. If it changes
   to **Pull origin**, click it. This brings down anything new.
2. Work in RStudio. Save your files as usual.
3. **Look at what changed.** Back in GitHub Desktop, the **Changes** tab lists
   every modified file. Click one to see the *diff*: removed lines in red, added
   lines in green. Read this before every commit — it is the single best habit
   in this whole workflow, and it catches an enormous number of mistakes.
4. **Commit.** In the bottom left, write a summary in the imperative, under
   about 50 characters:
   - Good: `Add accuracy plot`, `Fix RT filter for practice trials`
   - Not useful: `changes`, `update`, `asdf`
   Then click **Commit to main**.
5. **Push.** Click **Push origin** at the top.

Commit small and often. Ten commits that each do one thing are far easier to
read — and to undo — than one commit that does ten things.

---

## Things that will happen to you

**"I committed but nothing is on GitHub."**
You committed but did not push. Click **Push origin**. Then check you are
looking at *your* fork on github.com, not the class copy — the class copy will
never show your work.

**"There's a file in the changes list I don't recognize."**
Probably `.RData`, `.Rhistory`, or `.DS_Store`. Those are already in
`.gitignore` in this repo, so you should not see them — if you do in another
project, add them to that project's `.gitignore` rather than committing them.

**"I want to throw away my changes to a file."**
Right-click the file in the Changes list → **Discard changes**. This cannot be
undone, so be sure.

**"I made a mistake in my last commit message."**
If you have not pushed yet: **Repository** menu → **Undo last commit**, fix, and
commit again.

**"It says there's a conflict."**
Two versions of the same lines disagree. GitHub Desktop will point at the file
and offer to open it. The conflicting region is marked with `<<<<<<<`, `=======`
and `>>>>>>>`; delete the markers and the version you do not want, save, then
commit. Ask for help the first time — everyone needs it once.

**Never** upload data with identifiable participant information to a public
repository. If you are unsure whether a file is safe to commit, ask before you
push. Once something is pushed publicly, assume it cannot be fully taken back.

---

## If you would rather use the terminal

You can. The [201 Fundamentals Workshop](https://psyc-201.github.io/fundamentals-workshop/)
walks through `git`, the `gh` command-line tool, and the rest of the
command-line setup. Nothing in this course requires it, and nothing in this
course forbids it — use whichever gets you to the analysis.
