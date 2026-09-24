# Troubleshooting

Almost every problem in the first week is one of the six below. Find your error
message, not a description of your feeling about the error message.

---

### `Error in library(tidyverse) : there is no package called 'tidyverse'`

The package is not installed. Run `01-install-packages.R`, wait for it to
finish, then try again. If it seemed to install but you still get this error,
you may have installed it under a different version of R — reinstall R's
packages by running `01-install-packages.R` once more after restarting RStudio
(**Session** → **Restart R**).

---

### `Error: 'data/example_rt_data.csv' does not exist in current working directory`

RStudio is not pointed at the project folder. Almost always this means you
opened the `.R` file directly instead of opening the project.

Fix: quit RStudio, then **double-click `getting-started-with-r.Rproj`**. Check
the top of the Console — it should show the project path — or run `getwd()`.

Do **not** fix this with `setwd("/Users/yourname/...")`. That path exists only
on your computer, so the script will break for anyone you send it to, including
us when we grade it.

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

### macOS: "RStudio can't be opened because Apple cannot check it for malicious software"

Right-click (or Control-click) the RStudio icon → **Open** → **Open** again in
the dialog. You only need to do this the first time.

---

### GitHub Desktop: "Authentication failed" when pushing

Sign out and back in: **GitHub Desktop** menu → **Settings/Options** →
**Accounts** → **Sign out**, then sign in again through the browser. This also
fixes the case where you are pushing to a repository owned by a different
account than the one you are signed in as.

---

### Still stuck

Run `02-check-your-setup.R` and copy **all** of its output. Post that, plus the
exact error text, in the course forum. Say what you expected to happen and what
happened instead. Screenshots of a whole screen are hard to read; copied text is
easy.

A useful thing to include:

```r
sessionInfo()
```

Paste its output too. It tells us your R version, your platform, and every
package that is loaded — which is usually enough to spot the problem
immediately.
