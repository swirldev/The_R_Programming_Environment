## Convert from old grouped_df dplyr format to ungrouped format

x <- readRDS("titanic_4.rds")
x <- ungroup(x)
saveRDS(x, file = "titanic_4.rds")


x <- readRDS("titanic_4_b.rds")
x <- ungroup(x)
saveRDS(x, file = "titanic_4_b.rds")
