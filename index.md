**Location:** Sainsbury Laboratory Cambridge University ([map](https://goo.gl/maps/cBHYGk9TkfK2))

**Dates:**

**Instructors:** 
[Sandra Cortijo](mailto:sandra.cortijo@slcu.cam.ac.uk), 
[Hugo Tavares](mailto:hugo.tavares@slcu.cam.ac.uk),
[Anna Gogleva](mailto:anna.gogleva@slcu.cam.ac.uk)

**Requirements:** participants must bring a laptop with a few specific software 
packages installed beforehand ([details below](#software_installation)). 


### Description

This is a series of short and modular workshops where you will learn how to analyse 
data using the statistical software _R_. 
Each module will be 1h30m - 2h long and we will cover topics such as:

- How to prepare your data to maximise the number of questions you 
can ask from it
- How to visualise data
- How to filter and summarise your data efficiently

We specifically focus on tabular data (like you would produce in a spreadsheet) 
and aim to very quickly teach you how to produce high-quality graphs to 
enable efficiently data exploration.

No prior knowledge of _R_ is assumed. Even if you already know _R_, this might 
be useful if you want to refresh your memory or learn about specific packages 
that we will cover (`ggplot2` for plotting and `dplyr` for manipulating tables).

As an example dataset we will be using real data published by 
[Burghardt .. Schmitt (2015)](https://doi.org/10.1111/nph.13799). 


### Course Materials

#### Module 1 

[File organisation](module01_data_and_files/materials/file_organisation.md)

[Data organisation](module01_data_and_files/materials/data_organisation.md)

[Intro to R and read your data into R](module01_data_and_files/materials/brief_r_intro.Rmd)

#### Module 2

[Data visualisation](module02_data_viz_ggplot/materials/ggplot_lesson.html)

#### Module 3

[Data manipulation](module03_advanced_data_manipulation_dplyr/materials/dplyr_lesson.html)


#### Module 4

[Advanced data manipulation](module04_practice/materials/advanced_dplyr_lesson.html)

[Practice exercise](https://raw.githubusercontent.com/tavareshugo/slcu_r_course/master/module04_practice/materials/practice_template.R)

[Dataset](https://raw.githubusercontent.com/tavareshugo/slcu_r_course/master/module04_practice/data/TPM-light-WT-17c-27c-RNA-seq-average-rep1-rep2_misexpressed.tsv)

[Solutions!](module04_practice/materials/practice_solutions.html)


### Further resources

The University runs several introduction courses on R and other topics (bioinformatics, image analysis, etc.):

- [Full course list](https://www.training.cam.ac.uk/search?course_type_facet_shown=&scheduled=on&course_date_facet_shown=true&course_availability_facet_shown=&provider_1345591=on&provider_facet_shown=&scrollPos=627)
    - Intro to statistics (using R): https://www.training.cam.ac.uk/event/2235484

### Software installation<a name="software_installation"></a>

You will need a laptop with the following software installed:

- R ([download](https://cran.rstudio.com/))
- RStudio ([download](https://www.rstudio.com/products/rstudio/download/#download))

In each case, download the relevant installer for your operating system (Mac, 
Windows and Linux versions are available) and install the programs as you would 
do normally.

After installing both of those programs, we would ask you to install some _R_ 
packages (these are like "extensions" to add extra functionality to _R_):

1. Make sure you're connected to the internet
2. Open RStudio
3. In the top menu choose `Tools > Install Packages...`
4. Type the following in the "Packages" box: `tidyverse,visdat,plotly`
5. Click "Install" and the installation should happen automatically

Please confirm that the packages are properly installed by doing the following:

1. Open RStudio
2. In the "Console" panel (bottom left) type the following commands, one at a 
time:
    - `library(tidyverse)`
    - `library(visdat)`
    - `library(plotly)`
3. The output should be similar to what is shown in the screenshot below. If 
you get a message, such as: 
"Error in library(tidyverse): there is no package called 'tidyverse'"
**please get in touch with one of the instructors before the course**.

![Screenshot of correct package installation](package_installation_instructions.png)
