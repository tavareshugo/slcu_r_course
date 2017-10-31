adapted and expanded from (http://rpubs.com/minebocek/user2017-ors)

## Motivation

- There will be files, lots of files
- Files will change over time
- Files will have complex relationships, that can also change over time

**File organisation and naming - effective weapons against chaos**

![motivation](https://github.com/tavareshugo/slcu_r_course/blob/master/module01_data_and_files/xkcd_documents.png)

## How to name files:
Here are some key principles for file names:

1) **Name should be machine readable:**
  - easy to search for files later;
  - easy to narrow file lists based on names;
  - easy to extract information from file names;

How to achieve:

  - order the elements in a file name from general to specific;
  - avoid special characters  * : \ / < > | " ? [ ] ; = + & £ $;
  - don't use spaces to separate elements in file name;
  - chose a convention and stick to it:
    - alllowercase: e.g. adjustcolor
    - period.separated: e.g. plot.new
    - underscore_separated: e.g. numeric_version
    - lowerCamelCase: e.g. addTaskCallback
    - UpperCamelCase: e.g. SignatureMethod
  - ideal situation: chose convention, stick to it, make your collaborators stick
  to it as well  

2) **Names should be human readable:**

How to achieve:

  - name should contain information on content;
  - name can/should contains semantics (place in work flow);
  - don't use initials, abbreviations and codes that are not commonly understood  
  - keep file names short, but meaningful.

3) **File names should play well with default ordering**

How to achieve:
  - use numeric prefix to induce logic order;
  - left pad numbers with zeroes, e.g. use 01 instead of 1;
  - use YYYY-mm-dd standard for dates.

### Exercise:

You are collecting data on expression of your favourite gene in different
accessions of Arabidopsis plants during the day. The experiment is large, so you
perform the measurements on different days. Expression of your gene might be
affected by temperature, so for each accession you have readings at low (15 C)
and high temperature (25 C). As a diligent researcher, you perform each experiment
in 3 replicates.

How would you organise your data files? Suggest a file naming scheme which is both machine and human readable, file names should contain:

- date of experiment;
- type of assay;
- gene of interest;
- Arabidopsis accession;
- time point;
- replicate number;
- temperature.

## How to organise files in folders:

Research projects are quite different and file organisation scheme depends on the
types of data you are dealing with. Poor organisation choices can slow down research progress.

- Core principle: 'Someone unfamiliar with your project should be able to look at your files and understand what you did in detail and why'. This someone could be collaborator/reviewer/future self.
- Everything you do you will probably have to do again (repeat experiment with more conditions / reviewer requested additional experiments/ you need to explain your
 work to a student or new group member).

Some general principles:

- decide organisational structure before starting a project;
- store all the files relevant for a project in one common directory;
- keep raw data separately and **!never!** change the original copy;
- include README file with short description about contents of every file and additional
metadata;

Sample folder structure for a generic project:

- data_raw: initial raw files
- data_intermediate: intermediate datasets and data transforms
- results: final results
- paper_draft
- paper_submitted
- paper_accepted

## Version control
At some point you will inevitably generate multiple versions of the same file with
slightly changed contents. There are multiple ways to manage the versions:

- **OK**: have consistent file naming for multiple versions and ever use 'final' in
the file name:

```
2013-10-14_manuscriptFish.doc
2013-10-30_manuscriptFish.doc
2013-11-05_manusctiptFish_intitialRyanEdits.doc
2013-11-10_manuscriptFish.doc
2013-11-11_manuscriptFish.doc
2013-11-15_manuscriptFish.doc
2013-11-30_manuscriptFish.doc
2013-12-01_manuscriptFish.doc
2013-12-02_manuscriptFish_PNASsubmitted.doc
2014-01-03_manuscriptFish_PLOSsubmitted.doc
2014-02-15_manuscriptFish_PLOSrevision.doc
2014-03-14_manuscriptFish_PLOSpublished.doc
```

- **also OK**: Zip the entire directory of your project files every time you make
 a change, and save with date.
- **even better/almost perfect**: use version control systems (e.g git)
    - ideal for projects having a lot of
    - allows you to back up your code and safely experiment with it
    - keeps full history of a project
    - easy to set-up
    - easy to collaborate/share   

## Further reading:

- [A Quick Guide to Organizing Computational Biology Projects](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424)
- [Ten Simple Rules for Digital Data Storage](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005097)
- [Adaptable data management for systems biology investigations](https://bmcbioinformatics.biomedcentral.com/track/pdf/10.1186/1471-2105-10-79?site=bmcbioinformatics.biomedcentral.com)
- [learn git in 15 minutes](https://try.github.io/levels/1/challenges/1)
