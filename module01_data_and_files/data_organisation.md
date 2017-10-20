---
title: "Data Organisation in Spreadsheets"
date: "19 October 2017"
#output: slidy_presentation
---

## Motivation

In these data analysis modules we're going to learn to do data analysis using 
the statistical software _R_. 
This software has a bit of a steep learning curve, because running analysis 
involves writting down "instructions" (code) using a specific syntax. 
However, it provides with a huge **flexibility**, and has many extensions to analyse 
specific types of data from different scientifc fields (e.g. ecology, 
geography, psychology, economics, biology, etc...).

It also makes it easy to make data analysis **reproducible**,
because we can keep all these "instructions" within a text file that can be 
used, re-used and adapted to new datasets.

But before we even start with _R_, we're going to cover a crucial aspect of data 
analysis: **organising and tidying data**, so that it is ready for analysis. 
Although this is often seen as a "boring" and "unrewarding" task, it is absolutely 
vital to ensure that your data analysis efforts run smoothly later on - and 
ensures that you can make the most out of your data!


## Data Organisation (in spreadsheets)

Most of us use, at some point or another, a spreadsheet software (aka "Excel") 
to input data in the computer. It is therefore crucial that we follow good 
practices of recording data, so that it is in the most suitable format for 
analysis.

In this session, we're going to discuss:

- common pitfalls when recording data (and learn to avoid them!)
- principles and good practices for organising your data
- understand file formats and their suitability for other programs (e.g. _R_)


## Data Organisation: best practices

- **Never modify raw data** - always work on a copy of it. 
    - This is crucial, in particular with software such as Excel, where your data 
    manipulation steps are not recorded. This means that if you do a mistake and 
    realise it later on (say, months later!), it's very hard to go back to the 
    original data and correct it.
- **Keep a record data manipulations** you make to the raw data.
    - for example write notes on a README.txt file or on a separate worksheet of 
    the spreadsheet file.
- Data from an experiment should all be contained in a **single table**:
    - **Columns** should contain single variables (the things that were measured).
    - **Rows** should contain the observations (the units of study).


> **Exercise**: 
>
> A survey was done to determine the sex and weights of different animals 
occurring in different experimental plots. The experiment was repeated in two years.
>
> - The data for this survey is in the file "dataset_messy.xls" located in the 
"data" directory
> - Based on the principles outlined above, make a note of what data-formating 
problems you find with this dataset.
>
> Open discussion: what data-formating problems did you find? And how would you 
solve them?


## Data Organisation: formatting problems

- Data should not be placed on separate tables or worksheets.
- Missing values should be recorded as empty cells or as "NA". Zeros should 
be recorded as zero and not used to denote a missing value. 
- Comments and formatting (e.g. bold, coloured cells, etc.) should be avoided. 
Always try to assign revelant information to individual variables (columns).
- Avoid special characters  in the column names (such as !, #, *).
    - for _R_ it's good to also avoid spaces (use "_" to separate words for example).
- Be *very* careful with date formatting in spreasheets:
    - different spreadsheet programs (or versions) assume different things.
    - To avoid problems, store the day, month and year in separate variables. 

To expand more on these topics see the following two links from the Data Carpentry
materials: 
[Formatting data tables in Spreadsheets](http://www.datacarpentry.org/spreadsheet-ecology-lesson/01-format-data/) 
and 
[Formatting problems](http://www.datacarpentry.org/spreadsheet-ecology-lesson/02-common-mistakes/)


## Data Organisation: exporting data

Although Excel software is prevalent, its default file format is mostly only 
compatible with that program. For that reason, it's best practice to store 
tabular data in a text-based format instead. 

_CSV_ (comma-separated-values) is a commonly used format:

```
species,year,month,day,weight_kg,height_cm
mouse,2014,3,21,2,10
dog,2013,7,2,20,60
cat,2016,12,7,4.2,25
```

This can be done from any spreadsheet program by choosing "`Save As`" and then 
selecting the file format to be "_CSV_".

This is the recomended way to export data ready to be imported into _R_.


