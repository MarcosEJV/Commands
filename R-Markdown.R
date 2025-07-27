#R Markdown

bullets   #2 spaces are added after the word

**bold**  #Bold font between 2 asterisk

*italic*  #Italic font between asterisk
  
[linkname](website)  #To insert website addresses

#To organize the pdf in Markdown
#Header
---
title: "Whatever title"
author: "yo"
date: "Whenever"
output: pdf_document
---
#These next "commands" define the titles' size:

# Header level 1
## Header level 2
### Header level 4

#To create lists:
- item 1
- item 2
1. item 1
2. item 2

```{r "code"}  #To insert a command line in the text
Code
´´´    #Closes and executes the code

#knitr, slidify and markdown Packages complement R markdown documents.
