Adapted and expanded from [here](http://rpubs.com/minebocek/user2017-ors)

## Motivation

- There will be files, lots of files
- Files will change over time
- Files will have complex relationships, that can also change over time

**File organisation and naming - effective weapons against chaos**

![](https://imgs.xkcd.com/comics/documents.png )

## How to name files

There are some key principles for naming your files. File names should be:

1. machine-readable
2. human-readable
3. ordered logically in your file browser


#### 1. Machine-readable file names

Machine-readable file names allow you to easily:

- search for files of interest
- narrow file lists based on their names
- extract useful information from file names

How to achieve this:

- order the elements in a file name from general to specific
- avoid special characters such as `* : \ / < > | " ? [ ] ; = + & £ $`
- **don't use spaces** to separate elements in the file name.
- chose a convention and stick to it:
  - alllowercase: e.g. adjustcolor
  - period.separated: e.g. plot.new
  - underscore_separated: e.g. numeric_version
  - lowerCamelCase: e.g. addTaskCallback
  - UpperCamelCase: e.g. SignatureMethod
  - ideal situation: chose a convention, stick to it and make your collaborators 
  stick to it as well


#### 2. Human-readable file names

Human-readable file names should:

- contain information about their content
- contain semantics (place in work flow)
- avoid usage of initials, abbreviations or codes that are not commonly understood
- be short, but meaningful


#### 3. Logical order of files in the file browser

To have your files logically sorted in your file browser, you should start the 
file name with a prefix that ensures an alphabetical order that is logical for 
you:

- use a numeric prefix to induce a logical order
    - make sure you left pad numbers with zeroes, e.g. use 01 instead of 1
- use YYYY-MM-DD standard for dates.


>### Exercise:
> 
>You are collecting data on how the expression of two target genes 
changes in response to temperature in different accessions of Arabidopsis:
>
- Your genes are called "X" and "Y". 
- You measure their expression across three time-points during the day and under 
low (15 C) and high (25 C) temperature conditions. 
- You use two Arabidopsis accessions called "Col-0" and "Ler-1".
- As a diligent researcher, you perform each experiment in 3 replicates.
- The experiment is large, so you perform the measurements on different days. 
> 
>How would you organise your data files? Suggest a file naming scheme which is both 
machine and human readable. What information should the file names contain?


## How to organise files in folders:

Research projects are quite different and the file organisation scheme that you
adopt depends on the types of data that you are dealing with. 
Although there is no "universal" solution, poor organisation choices can slow down
research progress.

- Core principle: **Someone unfamiliar with your project should be able to look at 
your files and understand what you did in detail and why**. 
This someone could be a collaborator, a reviewer or even your future self.

- Everything you do, you will probably have to do again (repeat experiment with 
  more conditions / reviewer requested additional experiments / you need to explain 
  your work to a student or new group member).

Some general principles:

- decide organisational structure before starting a project
- store all the files relevant for a project in one common directory
- keep raw data separately and **never** change the original copy
- include README file with short description about contents of every file and
 additional metadata

Sample folder structure for a generic project:

- data_raw: initial raw files
- data_intermediate: intermediate datasets and data transforms
- results: final results
- scripts: any scripts used to process or analyse data
- paper_draft
- paper_submitted
- paper_accepted


## Version control

At some point you will inevitably generate multiple versions of the same file with
slightly changed contents. There are multiple ways to manage the versions:

- **OK**: have consistent file naming for multiple versions and never use 'final' 
in the file name:

```
2013-10-14_manuscriptFish.doc
2013-10-30_manuscriptFish.doc
2013-11-05_manusctiptFish_initialRyanEdits.doc
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
    - ideal for projects having a lot of code
    - allows you to back up your code and safely experiment with it
    - keeps full history of a project
    - easy to set-up
    - easy to collaborate/share   

## Further reading:

- [A Quick Guide to Organizing Computational Biology Projects](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424)
- [Ten Simple Rules for Digital Data Storage](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005097)
- [Adaptable data management for systems biology investigations](https://bmcbioinformatics.biomedcentral.com/track/pdf/10.1186/1471-2105-10-79?site=bmcbioinformatics.biomedcentral.com)
- [learn git in 15 minutes](https://try.github.io/levels/1/challenges/1)
- [Open and Reproducible Science with R](https://try.github.io/levels/1/challenges/1)
