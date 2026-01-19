# Assignment script 2 background
library(sf)
library(dplyr)

# Random monthly sampling for Phoca vitulina
sample_points <- x |>
dplyr::filter(SPECIES == "Phoca vitulina") |>
group_by(month, class) |>
slice_sample(n = 1) |>
ungroup()

# check rows
nrow(sample_points)

