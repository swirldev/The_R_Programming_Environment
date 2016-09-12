# After the previous question, you should have transformed the 
# `titanic` data to look like this:
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       1    54     male
#
# Now add a `dplyr` or `tidyr` function to the pipe chain in the 
# code at the bottom of this script so that `titanic_2` data frame 
# looks like this, with a new column added that specifies whether 
# the person's age is under 15, from 15 to 50, or over 50
# (this column should have a factor class, with factor levels ordered
# by age-- "Under 15", "15 to 50", "Over 50"): 
#
##   Survived Pclass   Age     Sex      agecat
##          0      3    22    male    15 to 50
##          1      1    38  female    15 to 50
##          1      3    26  female    15 to 50
##          1      1    35  female    15 to 50
##          0      3    35    male    15 to 50
##          0      1    54    male     Over 50
#
# I have already loaded the `titanic` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

titanic_3 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
  filter(!is.na(Age))