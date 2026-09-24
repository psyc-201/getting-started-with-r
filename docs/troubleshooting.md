# Troubleshooting

Almost every problem in the first week is one of the six below. Find your error
message, not a description of your feeling about the error message.

---

### `there is no package called 'tidyverse'` (or `'here'`)

The package is not installed. Run the `install.packages(c("tidyverse", "here"))`
chunk at the top of `getting-started.qmd` — click the green arrow at its top
right — wait for it to finish, then render again. If it seemed to install but you still get
this error, you may have installed it under a different version of R: restart
RStudio (**Session** → **Restart R**) and run that chunk once more.

---

### `Error: '...example_rt_data.csv' does not exist`

RStudio is not pointed at the project. Almost always this means you opened the
`.qmd` file on its own instead of opening the project.

Fix: quit RStudio, then **double-click `getting-started-with-r.Rproj`**. Run
`here()` in the Console — it should print the folder you cloned.

Do **not** fix this with `setwd("/Users/yourname/...")`. That path exists only
on your computer, so your work will break for anyone you send it to, including
us when we grade it. That is the whole reason we use `here()`.

---

### The install prints pages of red text

Red text in R is not automatically an error — warnings, progress bars, and
download logs are all red. Look for the words `Error` or `non-zero exit status`.
If they are not there, you are fine.

Two prompts you may see during installation:

- *"Do you want to install from sources the package which needs compilation?"*
  Answer **no** (type `n`, press Enter). The pre-built version is fine.
- *"Would you like to use a personal library instead?"* Answer **yes**.

---

### `Error: package or namespace load failed ... namespace 'rlang' ... is being loaded`

An old copy of a package is in memory. **Session** → **Restart R**
(`Cmd+Shift+F10` / `Ctrl+Shift+F10`), then run your script again. If it
persists, run `install.packages("rlang")` and restart R once more.

---

### `here()` points at the wrong folder, or the data file is not found

`here()` finds the top of your project by looking for
`getting-started-with-r.Rproj`. Run `here()` on its own in the Console: it
should print the folder you cloned. If it prints your home folder or your
Desktop instead, you opened the `.qmd` file on its own rather than opening the
project. Quit RStudio and reopen by double-clicking
`getting-started-with-r.Rproj`.

---

### macOS: "RStudio can't be opened because Apple cannot check it for malicious software"

Right-click (or Control-click) the RStudio icon → **Open** → **Open** again in
the dialog. You only need to do this the first time.

---

### GitHub Desktop: push fails with "permission denied" or 403

You cloned the class repository instead of your own copy, and you do not have
write access to the class copy. Look at the top of the GitHub Desktop window:
if it says `psyc-201/getting-started-with-r` rather than
`yourname/getting-started-with-r`, redo Part 2 of the README with the
**Use this template** button, then clone *that*.

Your edits are not lost — you can copy the changed files into the new folder.

---

### GitHub Desktop: "Authentication failed" when pushing

Sign out and back in: **GitHub Desktop** menu → **Settings/Options** →
**Accounts** → **Sign out**, then sign in again through the browser. This also
fixes the case where you are pushing to a repository owned by a different
account than the one you are signed in as.

---

### Still stuck

Copy the **exact** error text — from the Console, or from the **Background Jobs**
pane if rendering failed — and post it in the course forum. Say what you expected to happen and what
happened instead. Screenshots of a whole screen are hard to read; copied text is
easy.

A useful thing to include:

```r
sessionInfo()
```

Paste its output too. It tells us your R version, your platform, and every
package that is loaded — which is usually enough to spot the problem
immediately.
