# After the previous question, you should have transformed the `titanic`
# data to look like this:
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       3    NA     male
#
# Use a `dplyr` or `tidyr` function to change the `titanic` dataset so that the 
# first six lines look like this: 
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       1    54     male
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

titanic_2 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
  filter(!is.na(Age))