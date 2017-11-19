# Script can be run from the command line as
# Rscript process_course_data.R

library(tidyverse)

# Read data directly from repository
x <- read.table("https://datadryad.org/bitstream/handle/10255/dryad.104508/Experiment1.txt?sequence=2", 
                header = TRUE, stringsAsFactors = FALSE)

# Rename all variables to be lowercase
x <- x %>% 
  rename_all(funs(tolower(.)))

# Retain only the genotypes shown in Fig. 1b-c
x <- x %>% 
  filter(genotype %in% c("Ler-1", "Col Ama", "fca-6", "flc-3 FRI", "FRI", "Col FRI", "ld-1", "flk-1", "fve-3", "prmt5 FRI", "vin3-4 FRI"))

# Keep only a few of the variables (remove some redundant ones)
x <- x %>% 
  select(genotype, background, temperature, fluctuation, daylength, 
         vernalization, survival.bolt, bolt, days.to.bolt, days.to.flower,
         rosette.leaf.num, cauline.leaf.num, blade.length.mm, total.leaf.length.mm,
         blade.ratio)

# Rename "daylength" to "day.length" for good example of consistency
x <- rename(x, day.length = daylength)

# Save as CSV
write_csv(x, "burghardt_et_al_2015_expt1.csv")



