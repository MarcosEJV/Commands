#List of commands and a little informative comment about them.

print("text")   #Prints the text or variable.
x <-  value or data   #Assigns a value to the variable "x"

data.frame( column1 = c(x,y,z),    #Generates a dataframe
            column2 = c(a,b,c),
            column3 = c(1,2,3)
            row.names = c(a,b,c)   #This adds names to each row in an extra column.
)
tbl_df(x)       #Converts a dataframe in a table-dataframe. Which is more organized and better for data manipulation.

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
search()        #Shows the search list R is using to assing values to variables and functions.
ls(environment())   #It tells you what is inside a function environment.

Dataframe[Dataframe$Column|Condition]   #Gives you the specific data of a column- 
                                        #that complies with specific conditions.

summary()   #Shows a summary of a table.
dim()       #To look at the structure of a dataframe. The output is the number of rows and columns.
abs()       #Absolute value.
sqrt()      #Square root.
ceiling()   #Round up.
floor()     #Round down.
round(x, digits = n)      #Rounds.
cos(x) sin(x)
log(x)
log2(x) log10()
exp(x)

If(argument){ event 1,    #Conditional for order execution.
  event 2}
else { event 3,   #Not needed for "If" conditional.
  event 4
}

for("changes"in"values") { action/consequence   #Cycles.
}

variable <- read.table()  #Builds dataframes from table files. Arguments: sep = "," (for csv); header = TRUE (to indicate titles); skip (skips lines before read); nrows (how many rows to read).
read.csv()      #To read csv directly.
read.xlsx()     #To read excel files. sheetIndex = num (To know what worksheet should be imported); header = TRUE (column titles); colIndex / rowIndex (to read specific columns or rows. Requires Library xlsx.
read.xlsx()     #From library readxl, same as the previous one but you can use range = "firstcell:lastcell" to subset a range of cells (i.e. A3:C4).

names("table")  #Print first column.
head("table")   #Print first row. 6 rows is the standard.
tail("table")   #Print last row. 6 rows is the standard.
nrow("table")   #Count number of rows.
str("table")           #Internal structure of an R object. Simillar to summary().

"Table"[rowSums(countTable)>0,]   #Deletes rows without data.
table("dataframe"$Column)   #To know how many times each value actually occurs.
table(data$"column", data$"column2")     #To build tables from data.
sum(is.na(x$"column")) #How many NAs are in the data column.
colSums(x)      #To get a sum from each column.
table(x$"column" %in% "data")            #How many values in the column from x are in "data".
x[x$"column" %in% "data"]   #Subsetting based on selection.
xtabs(column1 ~ column2 + column3, data = x)                #Cross tabs the data to gove you a cress reference for data analysis (see notebook).
ftable(x)       #Summarizes cross tabs for easy analysis.
object.size(x)  #To know the size of the data.
merge(x,y,by.x="column",by.y="column",all=TRUE)             #Merges the data frames x and y, using the shared column as a reference.

write.table("table","table.txt",quote = FALSE, sep = "\t")  #Saves a table as text file
#the quote eliminates quotation marks.
#sep argument indicates separation using tabulation.

write.xlsx()    #Write an Excel. Requires Library xlsx.

sort(x&"column", decreasing = FALSE, na.last = TRUE)       #It sorts the value of a table using a column as a reference and in an ascending order. You can chose to do it in a descending order and to exclude NAs.
order(x&"column", x&"column2")           #Reorder the data using a specific column as a reference. If there are repeated values, the column 2 is used to resolve ties.

seq(minimum, maximum, by = "increasing order", length = "how many levels")   #Creates an index from the data using as a reference the argument by and length.
cut(x$"column", breakes = "How to break the data")         #To create categorical variables.

Hmisc::cut2(x$"column", g = "how to break the data")       #Same as cut but from Package Hmisc.

factor(x$"column", ...)     #To create factor variables. Arguments are to define how to create the factors.

readr::parse_number(x)      #It eliminates characters from a variable. i.e. class5 -> 5

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

                 ------------MySQL Package---------------

dbConnect(MySQL(), user = "username", db = "gene", host = "http://website")            #To download the data from the internet. db is used when you already know the gene you want to subset.
dbGetQuery(x, "show databases;") #Goes to the database x and perform the command to show databases.
dbGetQuery(x, "select count (*) from "table"")            #To know how many elements are in the table.
dbListTables(x) #It gives the number of tables in the database.
dbListFields(x, "Table name")    #Look at the fields in a particular table (fields are the columns).
dbReadTable(x, "Table name")     #Gives you the dataframe.
dbSendQuery(x, "select * from "table" where "column" between 1 and 3")            #It gives you all the variables of the table where the value of the "column" is between 1 and 3".
fetch(query, n=10)          #Shows the top 10 in the query.
dbClearResult(query)        #To clean the query when you are done.
dbDisconnect(x) #To disconnect from the database. REMEMBER TO DO THIS EVERYTIME YOU FINISHED.
            #NEVER COMMIT CHANGES TO THE DATABASE, JUST USE IT FOR DOWNLOAD.

                 ------------HDF5 Package----------------

h5createfile("name.h5")     #To create an HDF5 file.
h5createGroup("file.h5", "group name")            #To create a group inside an existing HDF5 file.
h5ls("file.h5")  #Similar to ls, but for HDF5 files.
h5write(x, "file.h5", "group/object")             #To insert data in the HDF5 file.
h5read("file.h5", "group/object")                 #To read the file.

                 ---------Reading from WEB (httr)--------

con = url("website")        #To read a website. It opens a connection.
htmlcode = readlines(con)   #To read the htlm content in the website.
close(con)                  #As in XML, this closes the connection to the website.

#Using the httr Package:

GET(url)         #Gets the website connection.
content(GETinfo, as = "text")           #Gets the website content.
htmlParse(contentinfo, asText = TRUE)   #Gets the html code.
GET(url, authenticate("user","password"))         #To get into a password login website. The output should be "Status 200" as a positive answer.
handle(url)      #To mark an website as "favorite" for future use.

                 ----------Data from APIs (httr)---------

#This is to get information from facebook, google, twitter, github, etc.

x = oauth_app("name app", key = "Consumer key from website", secret = "Consumer secret from website")  #To connect to the website.
y = sign.oauth1.0(x, token = "your token", token_secret = "token secret")  #To login.
homeTL = GET("url", sig)    #To access and download.
content(homeTL)  #It downloads the JSON file.
jsonlite::fromJSON(toJSON(jsonfile))    #It calls the jsonlite library and calls the function to get the dataframe form the json file.

                 ------------dplyr Package---------------

ddply(.data = table,        #It gives you the means of column 2 using column 1 as a filter.
      .variables = 'column',
      .fun = function(x) mean(x$column2)
)

[which.max(table[,2]),]     #It tells you the highest value, taking out the NA.

select(dataframe,column1,column2,...)   #Generates a new dataframe selecting specific columns.
filter(dataframe,row1,row2,...)         #As select but for rows.
summarize()     #Turns a dataframe in only 1 row.
group_by()      #Turns a dataframe into groups depending on specific conditions.
is.na()         #Filters NA values.
na.omit()       #Erase NA rows.
mutate(dataframe, newcolumnname = values)        #Add new columns to a dataframe. It can be used to do operations using the column data.
count()         #Counts data.
%>%             #For pipelines.
arrange(x, variable)        #Sorting data using a variable (ascending order). Argument desc(var) can be used to do it in descending order.
x$integer       #To add a new column to a data frame.
cbind(x, data)  #Binds new columns to the right of the data frame.
rbind(x, data)  #Binds new rows to the data frame, you can choose to add them at the top or bottom by using arguments.
Hmisc::mutate(x, "newcolumn" 0 cut2 (column, g = y))            #Create a new variable and add it to the dataset. It needs Package Hmisc.
rename(dataframe, ...)      #Changes the name of a column.
arrange(dataframe$column, decreasing = FALSE)    #The arrange command organize the data frame based on a column.
n_distinct(column)          #Identifies the different values in the column. Similar to using the nrow(unique(x())) command.
n(column)                   #It gives you the group size.
View(x)         #To print all the content in a data frame.

dataList = list(x,y,z)      #Creates a list of data frames and assigns it to a variable.
join_all(dataList)          #Merges all the tables in the list.

                -----------------data.table Package----------------

table()         #It gives you all the information of the tables in the environment.
x[]             #Subsetting tables.
x[,function()]  #Perform function to specific columns and variables in the table.
x[,title:"new information"]   #Adding columns to an existing table. You can use formulas using other columns. You can also use logic tests.
x[, .N, by=y]   #.N is a special variable that counts the number of times a value or variable appears in a table.
fread(fileorurl, skip = n, nrows = n2, select = c(n3:n4), col.names = c("names"))     #Fast reading tables. Much faster than read.table(x).
            #In addition, you can skip rows, select how manu rows to read, select columns and rename them.

                ----------------reshape2 Package-------------------

melt(x, id = c("columns"), measure.var = c("columns"))            #Organize the data frame according to the content.
dcast(x, idcolumn ~ measure.varvalue)            #Reorganizes the table using the previous organized content.
tapply(x$"columntosum", x$"referencecolumn")     #To sum values by a specific variable.
split(x$"columntouse", x$"referencecolumn")      #Gets a list of values.
lapply(splitresult, sum)    #Sum of the split values.
unlist(x)     #To get a vector for data manipulation.

#The same can be done using plyr Package:
plyr::ddply(x,.(targetcolumn),summarize,sum=sum(columntosum))
  
                ----------------tidyr Package-----------------

gather(data,key,value,-correctcolumn)            #Organize a messy table (data) by selecting the variables and indicating the columns to conserve (-correctcolumn). key and value indicates the columns names for the tidy
                                                 #dataset.

separate(data,col,into=c("new column 1","new column 2"))       #Separates the data from 1 column into 2 columns. The arugment sep is needed when there is no clear way to identify the data in the column.
spread(data,key = "column A", value = "column B")              #Organizes information that is fused in the same column.
  
                ------------------For dates-------------------

as.Date("date")       #Function for coercing date as a character as follows:
as.Date(x, "%d%b%Y")  #It indicates that day, month and year should be taken from a string.
  
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

#Using lubridate Package:

ymd("yyyy-mm-dd", tz = "")               #Converts a string in date class. It can change the timezone.
myd("mm-yyyy-dd", tz = "")               #Converts a string in date class. It can change the timezone.
dmy("dd-mm-yyyy", tz = "")               #Converts a string in date class. It can change the timezone.
ymd_hms("yyyy-mm-dd hh:mm:ss", tz = "")  #As previous but using also time. It can change the timezone.
wday(x[1], label = FALSE)       #Gets the number of the weekday. If label is TRUE, it returns the weekday name.
now(tzone = "") #It shows the current system date as yyyy-mm-dd and it can convert it to other time zone.
today()         #It shows the current system date as yyyy-mm-dd
update(datevariable, hours = n, minutes = n1, seconds = n2)   #It updates a time variable.
with_tz(datevariable, tzone = "")        #Changes the time zone.
interval(start = "date", end = "date", tz = "")   #To measure time intervals. tz argument can change time zones.
stopwatch()     #Timer
  
              -------------------------------------------------------
  
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

       ----------------- For plotting (base) ------------------

plot(x, y, "type", main = "title", xlab = "x-axis", ylab = "y-axis", pch = number)            #type -> white dots are default, "l" is a line chart. pch = 16 for black circles. For more, look into ?plot.
hist(x, col="color", breaks=int)          #Generates an histogram from a vector. The breaks argument determines the number of breaks used to build the graph.
barplot(x, col="color", main="title")     #Generates a barplot from a dataframe.
boxplot(variable1~variable2, dataframe, xlab = "label for x", ylab = "label for y", col.axis = "color for axis labels", col.lab = "color for axis titles", col="color")       #Bloxplot from a dataframe.
       #Arguments:
       pch #Plotting symbols for each point.
       lty #Type of line.
       lwd #Line width.
       col #Color -> colors() shows the color names as a vector.
example(points)               #It shows all the points that can be use in the pch argument.
par(modifier=value)           #Global graphic parameter modifier:
       #Arguments:
       las #Labels orientation.
       bg  #Background color.
       mar #Margin size.
       oma #Outer margin size.
dev.off    #or ~
plot.new   #Reset par modifers to defaults.
#Base ploting functions:
       plot()                 #Makes scatterplot.
       lines()                #Adds lines given vector values.
       points()               #Adds points.
       text("placeinthegraph", "text to add")               #Adds labels using specific coordinates.
       title("")              #Annotations
       mtext("")              #Arbitrary text to margins.
       axis()                 #Adds axis ticks/labels.
       lm(x~y)                #Builds a linear model with the data.
       legend("placeinthegraph", "text to add")             #Similar to text()
with(data, plot(variable1, variable2, col = variable3)      #Builds scatterplots.
       
         ----------------- lattice package -----------------

xyplot(variable1 ~ variable2 | f * g, data, layout = c(4,1))          #Builds a scatterplot comparing 2 variables from the data, and it builds 4 graphs in one row side by side. f and g are categorical variables.
bwplot()            #For box and whiskers plots (boxplots)
histogram()
stripplot()         #For boxplot with points
dotplot()           #Plots dots on "violin strings"
splom()             #Scatterplot matrix
levelplot() & contourplot()  #For plotting "image" data

         ----------------- ggplot2 package -----------------

qplot(variable1, variable2, data = dataframe, color = variable, geom = statistics, facets = .~variable)          #Builds a scatterplot from a dataframe. Color assigns a color to dots based on a variable.
                                                                                                                 #geom adds lines and statistics. facets allows multiplotting similar to mfrow or mfcol from plot()

ggplot(data, aes(x, y)) + geom_point()       #Plots data using ggplot() function. There is no plot until you call geom_point(), which is for scatterplots.
     
       ---------------- For editing text --------------------

tolower(names(x))            #Gets rid of capital letters in column names.
strsplit(names(x), "\\.")    #Eliminates periods in column names and replaces them with spaces.
sub("_", "", names(x),)      #Removes underscores in column names (only the first one).
gsub("_", "", names(x),)     #Removes all underscores in column names.
grep("text", x$column)       #Looks for a string or variable in a column and return its value.
grepl("text", x$column, value = TRUE)      #Returns a logical vector. The argument value returns the value where the string appears in the column. It can be used to subset data as follows:
       y <- x[!grepl("ejemplo", x$column),]

#Using Package stringr:

nchar(x)        #Number fo characters.
substr("text", n, n2)        #Substracts the content of a string from n to n2.
paste("x", "y", sep = " ")   #Prints 2 strings together (x y). sep is used to select the separation for the strings.
paste0("x", "y")             #Similar to paste() but it does not add any character between the strings (xy).
str_trim("x    ")            #Erase spaces at the end of strings.
              
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
