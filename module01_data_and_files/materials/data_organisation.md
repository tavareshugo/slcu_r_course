[back to course home](https://tavareshugo.github.io/slcu_r_course/)

---------


These materials are adapted from [here](http://www.datacarpentry.org/spreadsheet-ecology-lesson/).

## Motivation

In order to effectively analyse data it is crucial that we have **tidy data**. 
Although organising, cleaning and formatting data is often seen as a "boring" and 
"unrewarding" task, it is absolutely vital to ensure that your data analysis 
efforts run smoothly later on and ensures that you can make the most out of your data!

Most of us use, at some point or another, a spreadsheet software (aka "Excel") 
to input data in the computer. In this session, we're going to discuss:

- common pitfalls when recording data (and learn to avoid them!)
- principles and good practices for organising your data
- understand file formats and their suitability for other programs (e.g. _R_)


## Data Organisation: best practices

- **Never modify raw data** - always work on a copy of it. 
    - This is crucial, in particular with software such as Excel, where your data 
    manipulation steps are not recorded. This means that if you do a mistake and 
    realise it later on (say, months later!), it's very hard to go back to the 
    original data and correct it.
- **Keep a record of data manipulations** you make to the raw data.
    - for example write notes on a README file or on a separate worksheet of 
    the spreadsheet file.
- Data from an experiment should all be contained in a **single table**:
    - **Columns** should contain single variables (the things that were measured).
    - **Rows** should contain the observations (the units of study).


>### Exercise:
>
> A survey was done to determine the sex and weights of different animals 
occurring in different experimental plots. The experiment was repeated in two years.
>
> - Open the file "dataset_messy.xls" located in the "course_data" directory
> - Based on the principles outlined above, make a note of what data formatting 
problems you find with this dataset
>
> Open discussion: what data-formatting problems did you find? And how would you 
solve them?


## Data Organisation: formatting problems

- Data should not be placed on separate tables or worksheets.
- Missing values should be recorded as empty cells or as "NA". Zeros should 
be recorded as zero and not used to denote a missing value. 
- Comments and formatting (e.g. bold, coloured cells, etc.) should be avoided. 
Always try to assign relevant information to individual variables (columns).
- Avoid special characters  in the column names (such as `!`, `#`, `*`).
    - for _R_ it's good to also avoid spaces (use `_` to separate words for example).
- Be *very* careful with date formatting in spreadsheets:
    - different spreadsheet programs (or versions) assume different things.
    - To avoid problems, store the day, month and year in separate variables. 


## Data Organisation: exporting data

Although Excel software is commonly used, its default file format is mostly only 
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

This is the recommended way to export data ready to be imported into _R_.

>### Exercise:
>
>- Open the file "dataset_tidy.xls" in the "course_data" directory
>- Examine the file to see if you can understand its contents
>- Export the cleaned-up data as a `CSV` file (save it in the "course_data" 
directory)


## Further reading

- [Formatting data tables in Spreadsheets](http://www.datacarpentry.org/spreadsheet-ecology-lesson/01-format-data/) 
- [Formatting problems](http://www.datacarpentry.org/spreadsheet-ecology-lesson/02-common-mistakes/)
- [Wickam H (2014), _Tidy Data_, J Stat Soft](https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf)


---------

[back to course home](https://tavareshugo.github.io/slcu_r_course/)
