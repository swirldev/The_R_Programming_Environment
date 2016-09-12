# Add a `dplyr` or `tidyr` function to the pipe chain in the code 
# at the bottom of this script to subset the `titanic` dataset to 
# four columns, so that the first lines of the resulting data 
# frame (`titanic_1`) look like this: 
#
##  Survived  Pclass   Age      Sex
##         0       3    22     male
##         1       1    38   female
##         1       3    26   female
##         1       1    35   female
##         0       3    35     male
##         0       3    NA     male
#
# I have already loaded the `titanic` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

titanic_1 <- titanic %>% 
