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

[File organisation](../module01_data_and_files/file_organisation.md)

[Data organisation](../module01_data_and_files/data_organisation.md)

#### Module 2

[Data visualisation](../module02_data_viz_ggplot/start_lesson.Rmd)

#### Module 3

[Data manipulation](../module03_advanced_data_manipulation_dplyr/next_lesson.Rmd)


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
4. Type the following in the "Packages" box: `tidyverse,visdat`
5. Click "Install" and the installation should happen automatically

**If you have any problems please get in touch with one of the instructors 
beforehand**
