# Example code for R Introduction course - DAY 1

#### Basic calculations ####
2 + 2
5 - 2
25 * 4
5 ^ 2

# A small number
3E-2

# A large number
3E7

# log of a number (natural)
log(10)

# exponential (e)
exp(2)

# help files
?log10


#### Strings ####
"Hello, world!"
print("Hello, world")

# paste two or more together
paste("Hello", "Susie")
paste("Hello", "Susie", sep = ", ")
paste("Susie is", 39, "years old")

# Take out some characters in string
substr("Susie likes cake", 1, 2)
substr("Susie likes cake", 13, 16)




#### Objects ####
founded <- 1917
founded

location <- "Potocki Palace"
location

# Objects can be overwritten
founded <- founded + 1
founded

location <- "Kyiv"
location


# Object type
str(location)
str(founded)




#### Vectors ####
# numeric vector 
year <- c(2018, 2019, 2020)
year


# Categorical vector
oblasts <- c("Kyiv", "Volyn", "Sumy")
oblasts


# How many elements in the vector
length(oblasts)







############################################################################################
# Part 2 

#### Logical statements ####
founded == 1917
founded == 1918
year == 2018

# test for not equal
2 != 3

# test for contains
2018 %in% year
2015 %in% year

# combine
founded == 1917 | 2018 %in% year

# ifelse
ifelse(location == "Kyiv", "capital", "other")




#### Create a dataset ####
locationdata <- data.frame(oblasts, year)
locationdata
View(locationdata)

oblastdata <- data.frame(oblast = c("Kyiv",  "Volyn"), innbyggere = c(1731673, 104855))
View(oblastdata)




#### Read csv file ####
#install.packages("tidyverse")
library(tidyverse)

# Dataset with comma seperator
popdata <- read_csv("./data/population.csv")
View(popdata)


# Datasett with ; seperator
labourdata_feil <- read_csv("./data/labour_force.csv")
View(labourdata_feil)

labourdata <- read_csv2("./data/labour_force.csv")
View(labourdata)




#### Read in stata file ####
#install.packages("haven")
library(haven)
popdata <- read_dta("./data/population.dta")




#### Read fixed width format ####
pop <- read_fwf("./data/population.txt", 
                fwf_cols(region=15, total = 9, rural = 9, urban = 9))



#### Look at dataset ####
glimpse(labourdata)
summary(labourdata)
names(labourdata)


