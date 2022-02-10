library(dplyr)
head(mtcars)

# returning the rows of cars that have an mpg value greater than 
# 20 and 6 cylinders

head(filter(mtcars,mpg>20,cyl ==6))

# reorder the data frame by cyl first then by descending wt
mtcars %>% arrange(cyl, desc(wt))

# select the columns mpg and hp 
mtcars %>% select(mpg, hp)

# select distinct values of the gear column 
distinct(mtcars, gear)

# create a new column called "performance" which is calculated by hp 
# divided by wt

mutate(mtcars, performance = hp/wt)

# finding mean mpg using dplr
summarise(mtcars, mean_mpg = mean(mpg))

# use pipe operators to get the mean hp value 
# of cars with 6 cylinders 

mtcars %>% filter(cyl == 6) %>% summarise(mean_hp = mean(hp)) 

