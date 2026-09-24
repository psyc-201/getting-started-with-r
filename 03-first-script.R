# 03-first-script.R -----------------------------------------------------------
# Your first real analysis script: read data, summarize it, plot it, save the
# plot. This is the shape almost every script in this course will take.
#
# Two ways to run it:
#   - One line at a time: put your cursor on a line and press
#     Cmd+Enter (Mac) / Ctrl+Enter (Windows). Best for learning.
#   - All at once: click "Source" at the top of this pane.

# Load packages ---------------------------------------------------------------
library(tidyverse)

# Read the data ---------------------------------------------------------------
# The path is relative to the project folder, NOT to your personal computer.
# Never use setwd() -- it breaks the moment someone else opens your code.
rt_data <- read_csv("data/example_rt_data.csv", show_col_types = FALSE)

# Look at it ------------------------------------------------------------------
glimpse(rt_data)   # structure: rows, columns, types
head(rt_data)      # first few rows

# These are simulated data from a made-up Stroop-like task:
#   participant  anonymous ID
#   age_group    child or adult
#   condition    congruent or incongruent trials
#   rt_ms        mean reaction time in milliseconds
#   accuracy     1 = correct, 0 = incorrect

# Summarize -------------------------------------------------------------------
# The pipe |> reads as "and then": take rt_data, and then group it, and then
# summarize it.
condition_means <- rt_data |>
  group_by(age_group, condition) |>
  summarise(
    n       = n(),
    mean_rt = mean(rt_ms),
    sd_rt   = sd(rt_ms),
    .groups = "drop"
  )

print(condition_means)

# Plot ------------------------------------------------------------------------
rt_plot <- ggplot(rt_data, aes(x = condition, y = rt_ms, color = age_group)) +
  geom_point(
    position = position_jitterdodge(jitter.width = .15, dodge.width = .5),
    alpha = .5
  ) +
  stat_summary(
    fun = mean, geom = "point",
    size = 3, position = position_dodge(width = .5)
  ) +
  stat_summary(
    fun.data = mean_se, geom = "errorbar",
    width = .1, position = position_dodge(width = .5)
  ) +
  labs(
    title = "Reaction time by condition and age group",
    subtitle = "Points are participants; large points are means with SE bars",
    x = "Condition", y = "Reaction time (ms)", color = "Age group"
  ) +
  theme_minimal(base_size = 13)

rt_plot   # shows up in the Plots pane at the bottom right

# Save the plot ---------------------------------------------------------------
# Saving to a file (instead of copy-pasting from the Plots pane) is what makes
# a figure reproducible: rerun the script, get the identical figure.
ggsave("figures/rt_by_condition.png", rt_plot, width = 6, height = 4, dpi = 300)

message("Saved figures/rt_by_condition.png")

# Try it yourself -------------------------------------------------------------
# 1. Change the y-axis to accuracy instead of rt_ms. What happens to the plot?
# 2. Add `facet_wrap(~ age_group)` to the plot and rerun it.
# 3. In the summary above, also compute median(rt_ms).
# Then commit your changes in GitHub Desktop -- see docs/github-desktop.md
