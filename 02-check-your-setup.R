# 02-check-your-setup.R -------------------------------------------------------
# A "does everything work?" script. Click Source and read the output.
# If every line below says OK, you are ready for the first lab.

cat("\n================ PSYC 201A setup check ================\n\n")

# 1. Which R are you running? ------------------------------------------------
cat("R version :", R.version.string, "\n")
cat("Platform  :", R.version$platform, "\n\n")

if (getRversion() < "4.2.0") {
  cat("[!] Your R is older than 4.2. Please install a newer version of R.\n\n")
} else {
  cat("[OK] R version is recent enough.\n\n")
}

# 2. Are you inside the project? ---------------------------------------------
# When you open getting-started-with-r.Rproj, RStudio sets the working
# directory to this folder. That is what makes relative paths like
# "data/example_rt_data.csv" work on everyone's computer.
cat("Working directory:", getwd(), "\n")

if (file.exists("getting-started-with-r.Rproj")) {
  cat("[OK] You opened the project file. Relative paths will work.\n\n")
} else {
  cat("[!] I cannot see getting-started-with-r.Rproj here.\n")
  cat("    Quit RStudio, then re-open by double-clicking that file.\n\n")
}

# 3. Are the packages installed? ---------------------------------------------
needed <- c("tidyverse", "here")
have   <- needed[vapply(needed, requireNamespace, logical(1), quietly = TRUE)]
absent <- setdiff(needed, have)

for (pkg in have)   cat("[OK] package installed:", pkg, "\n")
for (pkg in absent) cat("[!] package MISSING  :", pkg, " -> run 01-install-packages.R\n")
cat("\n")

# 4. Can we actually load and use the tidyverse? -----------------------------
if (length(absent) == 0) {
  suppressPackageStartupMessages(library(tidyverse))

  demo <- tibble(x = 1:5, y = x^2) |>
    summarise(n = n(), mean_y = mean(y))

  cat("[OK] tidyverse loaded. Tiny test:", 
      "n =", demo$n, "| mean_y =", demo$mean_y, "\n")
  cat("     (expected: n = 5 | mean_y = 11)\n\n")

  # 5. Can we find the data file?
  data_path <- "data/example_rt_data.csv"
  if (file.exists(data_path)) {
    d <- read_csv(data_path, show_col_types = FALSE)
    cat("[OK] read", nrow(d), "rows from", data_path, "\n\n")
  } else {
    cat("[!] Could not find", data_path, "\n\n")
  }

  cat("You are all set. Open 03-first-script.R next.\n")
} else {
  cat("Fix the missing packages above, then run this script again.\n")
}

cat("\n=======================================================\n")
