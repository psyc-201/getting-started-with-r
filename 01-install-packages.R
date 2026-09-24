# 01-install-packages.R -------------------------------------------------------
# Run this ONCE, the first time you set up your computer for PSYC 201A.
#
# In RStudio: open this file, then click "Source" (top right of this pane),
# or press Cmd+Shift+S (Mac) / Ctrl+Shift+S (Windows).
#
# Installing the tidyverse takes a few minutes. It is normal to see a lot of
# red text scroll by -- that is progress output, not an error. If you are asked
#   "Do you want to install from sources the package which needs compilation?"
# answer "no" (type n and press Enter).

packages <- c(
  "tidyverse",  # dplyr, ggplot2, readr, tidyr, and friends
  "here"        # builds file paths relative to the project folder
)

missing <- packages[!(packages %in% rownames(installed.packages()))]

if (length(missing) == 0) {
  message("Nothing to install -- you already have: ", paste(packages, collapse = ", "))
} else {
  message("Installing: ", paste(missing, collapse = ", "))
  install.packages(missing)
}

message("\nDone. Next, run 02-check-your-setup.R")
