adapted and expanded from (http://rpubs.com/minebocek/user2017-ors)

## Motivation

- There will be files, lots of files
- Files will change over time
- Thy will have complex relationships, that can also change over time

File organisation and naming - effective weapons against chaos.

![motivation](https://github.com/tavareshugo/slcu_r_course/blob/master/module01_data_and_files/xkcd_documents.png)


## How to name files:
Here are some key principles for file names:

- Name should be machine readable:

**Why**:

  - easy to search for files later
  - easy to arrow file lists based on names
  - easy to extract information from file names
  
**Tips**:

  - order the elements in a file name from general to specific
  - avoid special characters  * : \ / < > | " ? [ ] ; = + & £ $
  - don't use spaces to separate elements in file name
  - chose a convention and stick to it

- Names should be human readable:

**Tips**:

  - name contains information on content
  - name contains semantics (place in workflow)
  - don't use initials, abbreviations and codes that are not commonly understood  
  - keep file names short, but meaningful.

- File names should play well with default ordering

**Tips:**
  - use numeric prefix to induce logic order
  - left pad numbers with zeroes
  - use YYYY-mm-dd standard for dates

===

- Power skills: meaningful and well organised file names can be parsed as
metadata (include example)
- Never use 'final' in the file name :) More about version control later.

# How to organise files in folders:

- keep raw data separately and (never)! change the original copy
- readme with short file descriotion

# Version control


References:

Noble, William Stafford. 2009. “A Quick Guide to Organizing Computational Biology Projects.” PLoS Computational Biology 5 (7): e1000424.
