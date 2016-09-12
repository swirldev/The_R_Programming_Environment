# After the previous question, you should have transformed the 
# `titanic` data to look like this:
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       3    NA     male
#
# Now add a `dplyr` or `tidyr` function to the pipe chain in the 
# code at the bottom of this script so that `titanic_2` data frame 
# looks like this, with observations where "Age" was missing removed: 
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       1    54     male
#
# I have already loaded the `titanic` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

titanic_2 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
