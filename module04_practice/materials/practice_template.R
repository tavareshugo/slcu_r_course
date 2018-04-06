# 1. Set up the environment ----

# We will need to load these 3 libraries
library(visdat) # for initial inspection of data
library(tidyverse) # for manipulation of data
library(plotly) # for building interactive plots

# Set your working directory to the course folder
## using setwd()


# 2. Read the data ----

# Please, note, here we are using `read_tsv()` because original file is
# tab-separated, not comma-separated ('csv')

mydata <- read_tsv("../data/TPM-light-WT-17c-27c-RNA-seq-average-rep1-rep2_misexpressed.tsv")

# 3. Check that dataset does not contain obvious problems ----

# Guide questions:
# - how many dimensions does the data have?
# - what are the column names? 
# - what kind of data do these variables contain?
# - what are the variable types?
# - are there any missing values?

# Hint: check the functions that we have discussed in the module02:
# View(), vis_dat(), dim(), glimpse(), names()




# 4. Data manipulation ----

# Now, let's reshape our data. We will do it in several steps and 
# ultimately we will generate a tidy dataset, suitable for applying ggplot 
# functions.

# 4.1 Reshape dataset from wide to long format: ----
# Hint: one of two: gather() or spread() should be able to help you.




# Check dimensions of the transformed dataset, do they match your expectatios? 
# Hint: compare with dimensions of the original dataset with dim() function.




# 4.2 Tidy variables ----

# You might have noticed that now you have a column that contains several 
# variables cramped together: time and temperature. Let's split it in 4 
# columns: "units", "genotype", "time" and "temperature" using separate() function.




# Does the transformed dataset looks as expected? Use View() or head() to make sure.





# 4.3 Drop "units" and "genotype" columns 
# the values in these columns are always the same.
# Hint: use select() function ----




# 4.4 Filter rows with low expression values ----
# When dealing with expression data we often have lots of genes that are barely 
# expressed. Let's get rid of them, this should slightly reduce the size of our
# dataset.
# Hint: use filter() to select rows with expression values greater than or equal to 1 TPM.




# Don't forget to check the dimensions. Can you tell how many rows have been 
# dropped?




# 5. Build plots ----

# 5.1. Initial visualization ----
# After all the transformations our dataset is ready to be plotted. 
# For example: what is the distribution of TPM values in the 3 time points and two temperatures?
## Hint: initialize plot with ggplot(), specify axes and plot aesthetics inside aes()
## select a suitable geom_*. 
## When in doubt, have a look at the examples provided in the module02 materials. 





# 5.2 Look at your favourite genes ----
# Say, now we are interested in 10 specific genes and we want to visualize their 
# expression in different temperatures over time.
# here are our genes of interest:
genes_of_interest <- c("AT1G67090", "AT5G19240", "AT1G31580", "AT3G12580",
                       "AT1G80920", "AT3G54660", "AT2G25110", "AT1G19530",
                       "AT3G23990", "AT3G30775")

# Now, lets subset expression data (data_long) for only our genes_of_iterest.
# Hint: use filter() and %in%




# Build line plots for every gene of interest, facet by gene_id. Can you put
# measurements for both temperatures in a single plot?
## Hint: you will need to use the "group" aesthetic to tell geom_line which points should be connected to each other



# 5.3 Save transformed data to file ----





# Bonus challenge for superheroes ----
## now do all the same steps, from data transformation to plotting with pipes 
## (excluding exploratory stages)!




