# After the previous question, you should have transformed the `titanic`
# data to look like this:
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       1    54     male
#
# Use a `dplyr` or `tidyr` function to change the `titanic` dataset so that the 
# first six lines look like this, where you've added a column called `agecat` 
# with categories of "Under 15", "15 to 50", and "Over 50" for the passenger's Age: 
#
##   Survived Pclass   Age     Sex      agecat
##          0      3    22    male    15 to 50
##          1      1    38  female    15 to 50
##          1      3    26  female    15 to 50
##          1      1    35  female    15 to 50
##          0      3    35    male    15 to 50
##          0      1    54    male     Over 50
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

titanic_3 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
  filter(!is.na(Age)) %>%
  mutate(agecat = cut(Age, breaks = c(0, 14.99, 50, 150), 
                      include.lowest = TRUE,
                      labels = c("Under 15", "15 to 50", "Over 50")))