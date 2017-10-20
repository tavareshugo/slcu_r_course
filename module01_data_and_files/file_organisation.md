adapted and expanded from (http://rpubs.com/minebocek/user2017-ors)

## Motivation

- There will be files, lots of files
- Files will change over time
- Thy will have complex relationships, that can also change over time

File organisation and naming - effective weapons against chaos.

![motivation](https://github.com/tavareshugo/slcu_r_course/blob/master/module01_data_and_files/xkcd_documents.png)

## How to name files:
Here are some key principles for file names:

1) **Name should be machine readable:**
  - easy to search for files later
  - easy to arrow file lists based on names
  - easy to extract information from file names
  
How to achieve:

  - order the elements in a file name from general to specific
  - avoid special characters  * : \ / < > | " ? [ ] ; = + & £ $
  - don't use spaces to separate elements in file name
  - chose a convention and stick to it:
    - alllowercase: e.g. adjustcolor
    - period.separated: e.g. plot.new
    - underscore_separated: e.g. numeric_version
    - lowerCamelCase: e.g. addTaskCallback
    - UpperCamelCase: e.g. SignatureMethod

2) **Names should be human readable:**

How to achieve:

  - name contains information on content
  - name contains semantics (place in workflow)
  - don't use initials, abbreviations and codes that are not commonly understood  
  - keep file names short, but meaningful.

3) **File names should play well with default ordering**

How to achieve:
  - use numeric prefix to induce logic order
  - left pad numbers with zeroes
  - use YYYY-mm-dd standard for dates

### Exercise:

You are collecting data on expresssion of your favourite gene in different accessions of Arabidopsis plants during the day.
The experiment is large, so you perform the measurments on different days. Expression of your gene might be affected by temerature, so for each accession you have readings at low (15 C) and high temerature (25 C). As a diligent reasercher, you perform each experiment in 3 replicates.

How would you organise your data files? Suggest a file naming scheme which is both machine and human readable, file names should contain:

- date of experiment;
- type of assay;
- gene of interest;
- Arabidopsis accession;
- time point;
- replicate number;
- temperature.

## How to organise files in folders:

Research projects are quite different and file organisation scheme depends on the types of data you are dealing with.
Poor organisation choices can slow down research progress.

- Core principle: 'Someone unfamiliar with your project should be able to look at your files and undersnad what you did in detail and why'. This someone could be collaborator/reviewer/future self
- Everything you do you will probably have to do again (repeat experiment with more conditions / reviewer requested additional experiments/ you need to explain your work to a student).

Some general principles:

- decide orgaisational structure before starting a project
- store all the files relevant for a project in one common directory
- 

  
- keep raw data separately and (never)! change the original copy
- readme with short file descriotion

## Version control


## Further reading:

Noble, William Stafford. 2009. “A Quick Guide to Organizing Computational Biology Projects.” PLoS Computational Biology 5 (7): e1000424.
Hart et al. 2016 “Ten Simple Rules for Digital Data Storage”. PLOS Computational Biology.
Adaptable data management for systems biology investigations https://bmcbioinformatics.biomedcentral.com/track/pdf/10.1186/1471-2105-10-79?site=bmcbioinformatics.biomedcentral.com

