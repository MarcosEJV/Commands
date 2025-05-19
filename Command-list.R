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

Summary()   #Shows a summary of a table.

dim()       #To look at the structure of a dataframe. The output is the number of rows and columns.

If(argument){ event 1,    #Conditional for order execution.
  event 2}
else { event 3,   #Not needed for "If" conditional.
  event 4
}

for("changes"in"values") { action/consequence   #Cycles.
}

variable <- read.table()  #Builds dataframes from table files. Arguments: sep = "," (for csv); header = TRUE (to indicate titles); skip (skips lines before read); nrows (how many rows to read).
read.csv()      #To read csv directly.
read.xlsx()     #To read excel files. sheetIndex = num (To know what worksheet should be imported); header + TRUE (column titles); colIndex / rowIndex (to read specific columns or rows. Requires Library xlsx.

names("table")  #Print first column.
head("table")   #Print first row.
tail("table")   #Print last row.
nrow("table")   #Count number of rows.

"Table"[rowSums(countTable)>0,]   #Deletes rows without data.

table("dataframe"$Column)   #To know how many times each value actually occurs.

write.table("table","table.txt",quote = FALSE, sep = "\t")  #Saves a table as text file
#the quote eliminates quotation marks.
#sep argument indicates separation using tabulation.
write.xlsx()    #Write an Excel. Requires Library xlsx.

                  ------------XML files---------------

xmlTreeParse(x,useInternal=TRUE)            #To extract XML files. Requires the XML Library.
xmlRoot(x)      #To get the root of the XML file.
xmlName(x)      #Name of the XML name.
x[[integer]]    #To extract items of the XML file.
xmlSApply(x,xmlValue)            #Loops through all the x XML file and get the xmlValue value.
XpathSApply(x,"//name",xmlValue) #XPath is a languange used for XML files to get more information. Is a different language. This extracts the "name" of all the components in the XML file.

                 --------------JSON files----------------
fromJSON("website")              #Extract the JSON data. The wesite can be changed by a variable or a text file.
name(x$owner)   #Look for the title of the "owner" column inside the JSON file.
toJSON(x,pretty=SURE)            #To convert a dataframe into JSON. pretty makes easier to read the file.
cat(x)          #To print the JSON file.

                 ------------dplyr Package---------------

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

na.omit()       #Erase NA rows.

mutate()        #Add new columns to a dataframe.

count()         #Counts data.

                -----------------data.table Package----------------

table()         #It gives you all the information of the tables in the environment.

x[]             #Subsetting tables.

x[,function()]  #Perform function to specific columns and variables in the table.

x[,title:"new information"]   #Adding columns to an existing table. You can use formulas using other columns. You can also use logic tests.

x[, .N, by=y]   #.N is a special variable that counts the number of times a value or variable appears in a table.

fread(file)     #Fast reading tables. Much faster than read.table().

                ---------------------------------------------------

search()        #Shows the search list R is using to assing values to variables and functions.

ls(environment())   #It tells you what is inside a function environment.

as.Date("date")       #Function for coercing date as a character as follows:

x <- as.Date("1989-07-14")
unclass(x)

weekdays()      #Function for day of the week.

months()        #Function for month name.

quarters()      #Function for quarted number i.e. "Q1"

system.time()   #Computes the time needed to execute and expression (in seconds). Returns a proc_time class object. user time: Time charged to the CPU. elapsed time: 'wall clock' time.

Sys.time()      #System time.

strptime(datestring, "%B %d, %y %H:%M")   #Function to acquire the time from different format.
        #B-month d-day y-year in 4 digits H-hour m-minute

as.POSIXct("date", tz = "EST")  #To manipulate time zone data. tz = time zone.

x != y          #Logical operator that tests if two values are not equal.

&               #"And" operator. If one is FALSE, everything is FALSE.
  
&&              #"And-and" operator, it evaluates only the corresponding values 1v1.
  
                #Or operators | and || work the same way. If one is TRUE, everything is TRUE.
  
                #"And" operators are evaluated before "or" operators.
  
argument1 %in% argument2  #Logical binary operator that will look for the information from argument 1 inside argument 2.

xor(argument1,argument2)  #"Exclusive or", if you have 1 TRUE argument, it returns TRUE.
                          #If you have 2 FALSE or 2 TRUE, it returns FALSE.

which()         #Indicates which values are TRUE in the variable.

any()           #Returns a TRUE if there is any TRUE in the variable.

all()           #Returns TRUE if all elements are TRUE.

%%              #Remainer of a divison.
  
function(...)   #The 3 dots are call ellipsis and it means "indefinite number of arguments".
  
lapply(x,function,(...))        #Loop over a list and evaluate a function on each element.

sapply()        #lapply() with a more simple output.

apply(x,margin,function,...)         #Apply a function over the margins of an array. The margin is an integer vector which margins should be retained. i.e. apply(x,1,sum) <- rowSums(x)

tapply(x, index, function,..., SIMPLIFY = TRUE)        #Apply a function over subsets of a vector. x is a vector. index is a factor or a list of factors.

mapply(function,...,MoreArgs = NULL, SIMPLIFY = TRUE, USE.NAMES = TRUE)        #Multivariate version of lapply().

split(x,f, drop = FALSE,...)          #Takes a vector or other objects and splits it into groups determined by a factor or list of factors. x is a vector, list or dataframe. f is a factor. frop says if empty factors
                                      #should be dropped.
       
date()          #It prints the date of the system.

file.exists("x")            #It verifies the presence of a file in the working directory.

dir.create("x")             #Creates a directory in the current working directory.

download.file(websiteinvariable, destfile = "directoryofdestination/filename.extension", method = "curl")            #For downloading files from the internet, 
                                                                                                                     #the method argument is needed when downloading form https on a Mac

       ----------------- Statistics -------------------

rnorm()         #Random numbers given a mean and STdev. r from random.

dnorm()         #Normal probability (given mean and STdev) at a point (or vector of points). d from density.

pnorm()         #Cumulative distribution function for a Normal distribution. p from probability.

rpois()         #Random Poisson variates with a given rate.

qnorm()         #Quantile function. q from quantile.

set.seed()      #Random number seed. This function allows reproducibility when generating numbers.

sample()        #Draw random samples from objects. if replace = TRUE -> the picked valued can be repeated.

       ----------------- For plotting (basic) ------------------

plot(x, y, "type", main = "title", xlab = "x-axis", ylab = "y-axis", pch = number)            #type -> white dots are default, "l" is a line chart. pch = 16 for black circles. For more, look into ?plot.

hist()          #Generates and histogram from a vector.

boxplot()       #Bloxplot from a dataframe.
       
       ----------------- For debugging ---------------------

traceback()     #Prints out the function call stack after an error.

debug()         #Enters "debug" mode, step trhough execution one line at a time.

browser()       #Suspend execution of a function wherever it is called.

trace()         #Insert debugging code without modifying the function.

recover()       #Modify the error behavior so tou can get the function call stack.

str()           #Internal structure of an R object. Simillar to summary().

Rprof()         #Starts the Profiler in R.

SummaryRprof()  #Makes Rprof() readable. Keeps track of the function call stack and tabulates how much time is spend on each function. NEVER USE Rprof() and system.time() together.

object.size()   #Splace in memory of an object.
