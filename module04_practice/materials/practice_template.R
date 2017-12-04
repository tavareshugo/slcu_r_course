# Set up the environment ----

library(visdat)
library(tidyverse)
library(plotly)
library(stringr)

# Download the data ----

# note, here we are using `read_tsv` because original data is tab-separated
data <- read_tsv("../data/TPM-light-WT-17c-27c-RNA-seq-average-rep1-rep2_misexpressed.csv")

# Check that dataset does not contain obvious problems ---
# Functions that might help:

View()
vis_dat()
names()

# Data transforms ----

#spread()
gather()
filter()
select()

dim(data)

# gather the dataset:
data_long <- data %>% 
    gather(sample, expression, names(data)[2:8])

dim(data_long)

# split sample column in 2 variables: time and temperature

data_long$temperature <- sapply(data_long$sample, function(x) strsplit(x, '_')[[1]][3])
data_long$time <- sapply(data_long$sample, function(x) strsplit(x, '_')[[1]][4])


# selecte all the columns except the old sample column

data_long <- select(data_long, c("gene", "expression", "temperature", "time"))

# filter rows with expression values > 10:

data_long <- filter(data_long, expression >= 10)
dim(data_long)

# mutate? 17c -> 17 / 0 min -> 0 ?

# Build plots ----

ggplot(data_long, aes(time, expression, colour = time)) +
           geom_violon() +
           facet_grid(temperature ~ .)

## Say, we are interested in 5 specific genes and we want to visualize their 
# expression in different temperatures over time

# randomly sample genes of interest (need to select better examples :))
genes_of_interest <- sample(unique(data_long$gene), 10)

# filter data_long for genes of interest:
data_long_interest <- filter(data_long, gene %in% genes_of_interest)


# build line plots for every gene of interest:

ggplot(data_long_interest, aes(time, expression, group = temperature)) +
    geom_point(aes(color = temperature)) +
    geom_line(aes(color = temperature)) +
    facet_wrap(~ gene)

# Save transformed data to file
