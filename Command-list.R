#List of commands and a little informative comment about them.

print("text")   #Prints the text or variable.

x <-  value or data   #Assigns a value to the variable "x"

data.frame( column1 = c(x,y,z),    #Generates a dataframe
            column2 = c(a,b,c),
            column3 = c(1,2,3)
            row.names = c(a,b,c)   #This adds names to each row in an extra column.
)

matrix(c(1:10),    #Generates a matrix
       nrow = 2,
       ncol = 5
)

getwd()         #This gives you the current directory.

setwd("/location")  #This sets a directory as the working directory.

round(number,decimals)  #Round a number, adding decimals acording to the indication.

c(data)         #This generates vectors.

"dataframename"[x,y]  #To see the data in a specific cell of a dataframe.

"dataframename"[,c(1,3)]  #All rows, just column 1 and 3 of a dataframe.

head(dataframe)   #Shows the title of the dataframe table.

Dataframe[Dataframe$Column|Condition]   #Gives you the specific data of a column- 
                                        #that complies with specific conditions.

tail()    #Shows the last row of a table.

Summary()   #Shows a summary of a table.

If(argument){ event 1,    #Conditional for order execution.
  event 2}
else { event 3,   #Not needed for "If" conditional.
  event 4
}

for("changes"in"values") { action/consequence   #Cycles.
}

variable <- read.table()  #Builds dataframes from table files.

names("table")  #Print first column.
head("table")   #Print first line.
tail("table")   #Print last line.
nrow("table")   #Cound number of rows.

"Table"[rowSums(countTable)>0,]   #Deletes rows without data.

write.table("table","table.txt",quote = FALSE, sep = "\t")  #Saves a table as text file
#the quote eliminates quotation marks.
#sep argument indicates separation using tabulation.

#Next commands use plyr package.

ddply(.data = table,        #It gives you the means of column 2 using column 1 as a filter.
      .variables = 'column',
      .fun = function(x) mean(x$column2)
)

[which.max(table[,2]),]     #It tells you the highest value taking out the NA.

select(dataframe,column1,column2,...)   #Generates a new dataframe selecting specific columns.

filter(dataframe,row1,row2,...)         #As select but for rows.

summarize()     #Turns a dataframe in only 1 row.

group_by()      #Turns a dataframe intro groups depending on specific conditions.

is.na()         #Filters NA values.

mutate()        #Add new columns to a dataframe.

count()         #Counts data.

#End of plyr package known commands.

search()        #Shows the search list R is using to assing values to variables and functions.

ls(environment())   #It tells you what is inside a function environment.

as.Date("date")       #Function for coercing date as a character as follows:

x <- as.Date("1989-07-14")
unclass(x)

weekdays()      #Function for day of the week.

months()        #Function for month name.

quarters()      #Function for quarted number i.e. "Q1"

Sys.time()      #System time.

strptime(datestring, "%B %d, %y %H:%M")   #Function to acquire the time from different format.
        #B-month d-day y-year in 4 digits H-hour m-minute

as.POSIXct("date", tz = "EST")  #To manipulate time zone data. tz = time zone.

