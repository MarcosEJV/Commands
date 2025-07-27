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

```{r "code", echo = TRUE, results = "asis", fig.height = n, fig.width = n}  #To insert a command line in the text. echo defines if code is printed or only result, results defines if results should be printed, fig.size
Code                                                                         #defines the size of the figure if there is one
x <- anothercode
```    #Closes and executes the code

Este es un texto de prueba en el que quiero insertar la variable `r x` dentro del cuerpo del texto.    #`r variable` inserts a variable inside the text body

#knitr, slidify and markdown Packages complement R markdown documents.
