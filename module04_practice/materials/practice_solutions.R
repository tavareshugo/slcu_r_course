# Set up the environment ----
# We will need to load these 4 libraries

library(visdat) # for initial inspection of data
library(tidyverse) # for manipulation of data
library(plotly) # for building interactive plots
#library(stringr) # might not need this in the end

# Download the data ----

# Please, note, here we are using `read_tsv()` because original file is
# tab-separated, not comma-separated ('csv')

data <- read_tsv("../data/TPM-light-WT-17c-27c-RNA-seq-average-rep1-rep2_misexpressed.tsv")

# Check that dataset does not contain obvious problems ---

# Guide questions:
# - how many dimensions does the data have?
# - what are the column names? 
# - what the variables could contain?
# - what are variable types?
# - are there any missing values?

# Hint: check the functions that we have discussed in the module02:
# View(), vis_dat(), dim(), glimpse(), names()

View(data)
vis_dat(data)
dim(data)

# Data transforms ----
# Now, let's transform our data. We will do it in several steps and 
# ultimately we will generate a tidy dataset, suitable for applying ggplot 
# functions 

# 1. Transform dataset from wide to long format:
# Hint: one of two: gather() or spread() should be able to help you.

# gather the dataset:
data_long <- data %>% 
    gather(sample, expression, names(data)[2:7])

# Check dimesioned in the transformed dataset, do the match your expectatios? 
# Hint: compare with dimensions of the original dataset with dim() function.

dim(data_long)

# 2. Tidy varibales
# You might have noticed that now you have a column that contains several 
# variables cramped together: time and temperature. Let's split it in 4 
# columns: "units", "geotype", "time" and "temperature" using separate() function.

data_long <- separate(data_long, sample, sep = '_', into = c("units", "genotype", "temperature", "time"))

# Does the transformed dataset looks as expected? Use View() or head() to make sure.

# 3. Drop "units" and "genotype" columns - the values there are always the same.
# Hint: use select() function.

data_long <- select(data_long, c("gene", "expression", "temperature", "time"))

# 4. filter rows with low expression values
# When dealing with expression data we often have lots of genes that are barely 
# expressed. Let's get rid of them, this should slightly reduce the size of our
# dataset.
# Hint: use filter to select rows with expression values greater than 1 TPM.

data_long <- filter(data_long, expression >= 1)

# Don't forget to check the dimensions. Can you tell how many rows have been 
# dropped?
dim(data_long)

# Build plots ----

# 1. Initial visualization
# After all the transformations our dataset is ready to be plotted. Use any type
# of visualization you find suitable to the problem to get a basic understanding
# of the structure  of your data. 
# Hint: initialize plot with ggplot() and select a suitable geom_*. Have a look
# at the examples provided in the module02 materials. 

ggplot(data_long, aes(time, expression, colour = time)) +
    geom_violin() +
    facet_grid(temperature ~ .)

# 2. Look at youur favourite genes.
# Say, now we are interested in 10 specific genes and we want to visualize their 
# expression in different temperatures over time.

# randomly sample genes of interest (need to select better examples :))
genes_of_interest <- sample(unique(data_long$gene), 10)
genes_of_interest <- c("AT1G67090", "AT5G19240", "AT1G31580", "AT3G12580",
                       "AT1G80920", "AT3G54660", "AT2G25110", "AT1G19530",
                       "AT3G23990", "AT3G30775")

# filter data_long for genes of interest:
data_long_interest <- filter(data_long, gene %in% genes_of_interest)


# build line plots for every gene of interest, facet by gene_id. Can you put
# measurments for both temperatures in a songle plot?

ggplot(data_long_interest, aes(time, expression, group = temperature)) +
    geom_point(aes(color = temperature)) +
    geom_line(aes(color = temperature)) +
    facet_wrap(~ gene, nrow = 5, scales = 'free') +
    ggtitle("my favourite genes")
    

# 3. Save transformed data to file

write_csv(data_long_interest, "../data/my_favourite_genes.csv")

# Bonus challenge for superheroes: now do the same with pipes (excluding exploratory stages)! ----

data <- read_tsv("../data/TPM-light-WT-17c-27c-RNA-seq-average-rep1-rep2_misexpressed.tsv")


genes_of_interest <- c("AT1G67090", "AT5G19240", "AT1G31580", "AT3G12580",
                       "AT1G80920", "AT3G54660", "AT2G25110", "AT1G19530",
                       "AT3G23990", "AT3G30775")

data_long <- data %>% 
    gather(sample, expression, names(data)[2:7]) %>%
    separate(sample, sep = '_', into = c("units", "genotype", "temperature", "time")) %>%
    select(c("gene", "expression", "temperature", "time")) %>%
    filter(expression >= 1 & gene  %in% genes_of_interest) %>%
    ggplot(aes(time, expression, group = temperature)) +
    geom_point(aes(color = temperature)) +
    geom_line(aes(color = temperature)) +
    facet_wrap(~ gene, nrow = 5, scales = 'free') +
    ggtitle("my favourite genes")

write_csv(data_long_interest, "../data/my_favourite_genes.csv")
