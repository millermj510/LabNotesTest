weight_kg <- 55
## control or command return to run the code without having to hit the run button above

(weight_kg <- 55)
## in paraenthesis assigns and runs within the same code line


## Create an object called weight_kg and assign it value of 57.5, then create weight_lb and assign its value as a function of weight_kg
weight_kg <- 57.5
weight_lb <- 2.2 * weight_kg

## Print out weight in pounds
weight_lb


## learning object assignment and manipulating it, example:
mass <- 47.5
age <- 122
mass <- mass * 2.0
mass
age <- age - 20
age
mass_index <- mass/age
mass_index



##Functions
sqrt(5)
b <- sqrt(5)
b

## round function
round(3.14159)

args(round)

round(3.14159, 2)

## alt-minus will give you the assigning <- arrow


## Data Types
weight_g <- c(50, 60, 65, 82)
weight_g

animals <- c("mouse", "rat", "dog")
animals

length(weight_g)
length(animals)

class(weight_g)
class(animals)

weight_g + 10

str(weight_g)
str(animals)

weight_g <- c(weight_g, 90)
weight_g
weight_g <- c(30, weight_g)
weight_g


typeof(weight_g)
typeof(animals)

## Data challenge to try and create a vector of mixed types

num_char <- c(1, 2, 3, "a")
num_char
typeof(num_char)

num_logical <- c(1, 2, 3, TRUE)
num_logical
typeof(num_logical)
##above example shows that true becomes 1 and if had false would be zero 0

char_logical <- c("a", "b", "c", TRUE)
char_logical
class(char_logical)
typeof(char_logical)

tricky <- c(1, 2, 3, "4")
tricky
typeof(tricky)


##Subsetting vectors

animals <- c("mouse", "rat", "dog", "cat")
animals
animals[2]

## If we want to pull out more than one thing
animals[c(3,4)]

## Only dogs vector
only_dog <- animals[c(3,3,3,3,3,3,3)]
only_dog

## Conditional subsetting
weight_g <- c(21,34,39,54,55)
weight_g

## Subsetting using true or false
weight_g[c(TRUE, FALSE, TRUE, TRUE, FALSE)]


weight_g > 50

## pulling out weights that are greater than 50
weight_g[weight_g>50]

## pulling out weights that are greater than 50 or less than 30; THE OR SYMBOL is the PIPE |

weight_g[weight_g >50 | weight_g < 30]


## Try and pull out impossible conditions

weight_g[weight_g == 50 | weight_g < 25]

weight_g[weight_g == 50 | weight_g > 100]

## AND = &
weight_g[weight_g == 50 & weight_g < 25]


## If we want ot see if if any of our elements in animals are in another vector we use the command
## %in%
animals %in% c("rat", "cat", "dog", "duck", "goat")

animals[animals %in% c("rat", "cat", "dog", "duck", "goat")]

## Why is this? 
"four" > "five"
4 > 5


## Dealing with missing data
heights <- c(2, 4, 4, NA, 6)
heights
str(heights)

mean(heights)

mean(heights, na.rm = TRUE)

new_heights <- heights[!is.na(heights)]
new_heights

mean(new_heights)



## STARTING WITH DATA FRAMES

## Using a function called download.file

download.file("https://ndownloader.figshare.com/files/2292169", "data/portal_data_joined.csv")
  

## To read a csv file from your computer, function read.csv

surveys <- read.csv("data/portal_data_joined.csv")

surveys


## head - returns the first 6 lines of your csv file so you can see columns and kinds of data in rows
head(surveys)

## to inspect dataframes can use View and will open in a more typical spreadsheet format within this
## upper viewing window as a new tab
View(surveys)

## comma separated values, comma delimiters is read.csv
## semi-colon delimiters for decimals is read.csv2
## tab delimited can use read.delim()



## ALL of these are a subset of read.table()
surveys <- read.table(file="data/portal_data_joined.csv", sep = ",", header = TRUE)



## Dimensions of the data; the data comes out as: rows, columns
dim(surveys)

## number of rows
nrow(surveys)

## number of columns
ncol(surveys)

## To see last 6 lines is tail
head(surveys)
tail(surveys)


## structure of the dataframe gives lots of description about the data in the table
str(surveys)


## some quick and dirty summaries of our data across all of our columns
summary(surveys)



## If I want the value from the first row and the first column
surveys[1,1]
surveys[2,4]
surveys[1,2]  

## TO get just info from a single row, specify which row number and no entry for the column place
surveys[1,]
surveys[73,]

## Can use the same structure but for column as the second place holder
surveys[,1]


## Use a colon to get a range of data
surveys[1, 1:5]
surveys[1:5, 1]
surveys[1:5, 1:5]
surveys[1:5, c(1:2, 4:5)]

## What if you don't want something back such as don't want the first column
surveys[1:5,-1]


## Using column names to pull out data, result is a data.frame
surveys["species_id"]

## Using column names to pull out data, reult is a vector
surveys[,"species_id"]
surveys[["species_id"]]
surveys$species_id


head(surveys)


surveys_200 <- surveys[1:200,]
surveys_200
summary(surveys_200)

tail(surveys_200)
surveys[194:200,]
summary(surveys)




str(surveys)

## Create a set of data which is a factor
sex <- factor(c("male", "female", "female", "male"))
sex
levels(sex)
nlevels(sex)

## TO change the ordering of different levels into an order that you want so that they aren't alphabetical
sex <- factor(sex, levels=c("male", "female"))
sex

## Turn a factor back into a character data type
as.character(sex)



## Converting back to numbers is harder
year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
year_fct

as.numeric(year_fct)

as.numeric(as.character(year_fct))

as.numeric(levels(year_fct))[year_fct]



## Using factors we can quickly plot some data
## lets look at males and females in our dataset

plot(surveys$sex)


## We are going to pull out sex column from original data
sex <- surveys$sex
head(sex)
levels(sex)

## To change a level name
levels(sex)[1] <- "undetermined"
levels(sex)
plot(sex)


## Challenge to rename "F" and "M" to whole words and to reorder the variables (levels) on the figure
levels(sex)[2] <- "female"
levels(sex)[3] <- "male"
plot(sex)
sex <- factor(sex, levels=c("female", "male", "undetermined"))
plot(sex)




##
surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = TRUE)
str(surveys)

surveys <- read.csv("data/portal_data_joined.csv", stringsAsFactors = FALSE)
str(surveys)


library(tidyverse)

install.packages("tidyverse")

library(tidyverse)


## DAY TWO OF R WORKSHOP ##


## Manipulating analyzing and exporting data with the tidyverse

## HOW TO LOAD A PACKAGE

library(tidyverse)

## Yesterday we used base R's read.csv, today we will use readr (a package in tidyverse) and read_csv
## NEED TO READ IN CSV AS A TIBBLE WHICH IS READ_CSV TO MAKE IT THE PRETTY PRINT OUTPUT (not read.csv)

surveys <- read_csv("data/portal_data_joined.csv")


## inspect our data
str(surveys)

## show surveys allows you to view tibble in an easy to read format
surveys

## view our data in a new tab in the upper window in a typical table format
View(surveys)


## subset columns - seleCt (where C=columns)
select()

## subset/pull out rows - filteR (where R=rows)
filter()

## to create new columns based on data already in our dataframe
mutate()

## create summary stats on grouped data
group_by %>% summarise()

## for sorting your data
arrange()

## count discrete values
count()


## pull out plot_id, species_id, weight from surveys (pulling out columns)
select(surveys, plot_id, species_id, weight)

## to select columns except for particular ones you dont want
select(surveys, -record_id, -species_id)


## pull out specific rows
filter(surveys, year==1995)


## how to select and filter on same data set
## could use intermediate steps

surveys2 <- filter(surveys, weight<5)
surveys2

surveys_sml <- select(surveys2, species_id, sex, weight)
surveys_sml


## another way to select and filter on same data set
## could use nested functions

surveys_sml <- select(filter(surveys, weight<5), species_id, sex, weight)
surveys_sml


## as an aside, even though spaces dont matter most o fthe time, sometimes they do, no space between function ()
## and the () following it but no space between an object and subsetting brackets e.g. object[]


## Another way to select and filter on same data set
## CAN USE PIPES to shoot the output from one function to another
## a pipe looks like this %>% and the shortcut is shift-control-m %>%  ("pipe as THEN", take surveys THEN filter...THEN)
surveys %>% filter(weight < 5) %>% select(species_id, sex, weight)

## if you want to save the output you need to assign it to an object

surveys_sml <- surveys %>% filter(weight < 5) %>% select(species_id, sex, weight)
surveys_sml



## challenge
## using pipes subset surveys to include animals collected BEFORE 1995, only include the columns year, sex, weight

surveys_1995 <- surveys %>% filter(year < 1995) %>% select(year, sex, weight)
surveys_1995

## less than or equal to is <=


## TO CREATE NEW COLUMNS OF DATA ==== MUTATE
## to create new column of data of weight in kg
surveys %>% mutate(weight_kg = weight/1000)


## Create multiple columns in one go using mutate
surveys %>% mutate(weight_kg = weight/1000, weight_kg2 = weight_kg^2)


surveys %>% mutate(weight_kg = weight/1000, weight_kg2 = weight_kg^2) %>% head()


## WHat about filtering out NAs?
## ! = not  and is.na = is it NA?  so  !is.na = is NOT NA
surveys %>% filter(!is.na(weight)) %>% mutate(weight_kg = weight/1000) %>% head()


## group_by is the column name that you want to calculate the summary statistics for
## summarize is what you want to summarize
surveys %>% group_by(sex) %>% summarize(mean_weight = mean(weight,na.rm=TRUE))

## you can group by multiple columns
surveys %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight, na.rm=TRUE))
surveys %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight, na.rm=TRUE)) %>% head()


## you can see more lines by using the function print
surveys %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight, na.rm=TRUE)) %>% print(n=6)
surveys %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight, na.rm=TRUE)) %>% print(n=24)


## if you get unexpected NAs, one method is
surveys %>% filter(!is.na(weight)) %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight)) %>% print(n=24)


## use the arrange function to sort from small to big min weights
surveys %>% filter(!is.na(weight)) %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight), min_weight = min(weight)) %>% average(min_weight) %>% head()


surveys %>% filter(!is.na(weight)) %>% group_by(sex, species_id) %>% summarize(mean_weight = mean(weight), min_weight = min(weight)) %>% arrange(desc(mean_weight) %>% head

## counting to work out numbers of rows
surveys %>% count(sex)

surveys %>% count(sex, sort=TRUE)                                                                                                                                                 

## if you dont want to sort by count
surveys %>% count(sex, species) %>% arrange(species, desc(n))


##CHALLENGE 
## how many animals were caught in each plot_type
## what is the mean, min, max hindfoot length for each species (species_id)
## hint you will want to use group_by, summarize()


surveys %>% group_by(species_id) %>% summarize(total = sum(record_id))
surveys %>% group_by(plot_id) %>% summarize(total=sum(record_id))

## how many animals were caught in each plot_type
surveys %>% count(plot_type)

surveys %>% filter(!is.na(hindfoot_length)) %>% group_by(species_id) %>% 
  summarise(mean_hindfoot_length = mean(hindfoot_length), 
min_hindfoot_length = min(hindfoot_length), max_hindfoot_length = max(hindfoot_length))



## Filtering out a bunch of NA values so we can plot our data
surveys_complete <- surveys %>% filter(!is.na(weight), !is.na(hindfoot_length), !is.na(sex))

species_counts <- surveys_complete %>% count(species_id) %>% filter(n >= 50)
species_counts
species_counts %>% head()

surveys_complete <- surveys_complete %>% filter(species_id %in% species_counts$species_id)
surveys_complete

dim(surveys_complete)



## Spread and Gather to do similar to what pivot tables do where can move data from rows into column, column into rows
## no time to go into that but can revisit online and on stackoverflow as needed




### PLOTTING YOUR DATA ###


## Basic template in ggplot

#ggplot(data = <DATA>, mapping=aes(<MAPPINGS)) + <GEOM_FUNCTION> ()

#To do this with our data
ggplot(surveys_complete)

#Define what is going to be on each axis
ggplot(surveys_complete, aes(x=weight, y=hindfoot_length))
#the above works fine, dont know why it keeps putting up a red X?

# Getting actual dots onto your graph
ggplot(surveys_complete, aes(x=weight, y=hindfoot_length)) + geom_point()

# Different options for displaying the data 
# geom_point is for scatter plots
# boxplots with geom_boxplot()
# line graphs is geom_line()

# assigne a plot to a variable/object
surveys_plot <- ggplot(surveys_complete, aes(x = weight, y = hindfoot_length))
surveys_plot

#Use the PLUS option to tweak how we want to display the data

surveys_plot + geom_point()
surveys_plot + 
  geom_point()

# The plus has to be on the end of the previous line


## How do you display your data using hexagonal bins?
install.packages("hexbin")
library(hexbin)

surveys_plot + geom_hex()

## scatterplot with some transparency
surveys_plot + geom_point(alpha = 0.1)

## display using a different color
surveys_plot + geom_point(alpha = 0.1, color="blue")


## display a variable using a different color such as show species id with color
surveys_plot + geom_point(aes(color=species_id))


##CHALLENGE
# create a scatterplot of weight over species_id and color points by species_id

ggplot(surveys_complete, aes(x=weight, y=species_id)) + geom_point(aes(color=species_id))
ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_point(aes(color=species_id))


## Boxplots!
ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_boxplot(aes(color=species_id))

ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_boxplot(alpha = 0) + geom_jitter(alpha=0.3, color="tomato")

ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_jitter(alpha=0.3, color="tomato") + geom_boxplot(alpha = 0) 


ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_boxplot(aes(color=sex))
ggplot(surveys_complete, aes(x=species_id, y = weight)) + geom_jitter(alpha=0.3, aes(color=sex)) + geom_boxplot(alpha = 0) 


## TIME SERIES ## Linear graphs

# create a new tibbl to plot with our time data
yearly_counts <- surveys_complete %>% count(year, species_id)
yearly_counts %>% head()

ggplot(yearly_counts, aes(x=year, y=n))

ggplot(yearly_counts, aes(x=year, y=n)) + geom_line()

## to do a different line for each species

ggplot(yearly_counts, aes(x=year, y=n, group = species_id)) + geom_line()

ggplot(yearly_counts, aes(x=year, y=n, color = species_id)) + geom_line()

ggplot(yearly_counts, aes(x=year, y=n, color = species_id)) + geom_line(lwd=2)




### How to plot a whole bunch of little graphs together (faceting)

ggplot(yearly_counts, aes(x=year, y=n)) + geom_line() + facet_wrap(~species_id)
ggplot(yearly_counts, aes(x=year, y=n, color=species_id)) + geom_line() + facet_wrap(~species_id)

#facet_grid to order the faceting into x and y columns/rows you can order look online



### Splitting our data out even further when doing this!
ggplot(yearly_counts, aes(x=year, y=n, color=sex)) + geom_line() + facet_wrap(~species_id)
yearly_counts %>% head()
#we need to make a new tibbl that has sex included!

yearly_sex_counts <- surveys_complete %>% count(year, species_id, sex)
yearly_sex_counts %>% head()

ggplot(yearly_sex_counts, aes(x=year, y=n, color=sex)) + geom_line() + facet_wrap(~species_id)
ggplot(yearly_sex_counts, aes(x=year, y=n, color=sex)) + geom_line(lwd=0.75) + facet_wrap(~species_id)


## How to change other graph aesthetics


## Changing the background etc using themes
ggplot(yearly_sex_counts, aes(x=year, y=n, color=sex)) + geom_line(lwd=0.5) + facet_wrap(~species_id) + theme_bw() +
  theme(panel.grid = element_blank())

ggplot(yearly_sex_counts, aes(x=year, y=n, color=sex)) + geom_line(lwd=0.5) + facet_wrap(~species_id) + theme_minimal() +
  theme(panel.grid = element_blank())

ggplot(yearly_sex_counts, aes(x=year, y=n, color=sex)) + geom_line(lwd=0.5) + facet_wrap(~species_id) + theme_light() +
  theme(panel.grid = element_blank())



