# After the previous question, you should have transformed the `titanic`
# data to look like this:
#
##   Survived Pclass   Age     Sex      agecat
##          0      3    22    male    15 to 50
##          1      1    38  female    15 to 50
##          1      3    26  female    15 to 50
##          1      1    35  female    15 to 50
##          0      3    35    male    15 to 50
##          0      1    54    male     Over 50
#
# Add one or more `dplyr` or `tidyr` functions to the pipe chain in 
# the code at the bottom of the script to change the `titanic` 
# dataset. The first six lines of the final `titanic_4` dataset 
# should look like the following example, with the number of
# passengers, number of survivors, and percent survival stratified
# by passenger class, age category, and sex. Be sure to use the 
# same column names as shown in the example output. 
#
## Pclass   agecat    Sex      N     survivors   perc_survived
## <int>   <fctr>    <chr>   <int>     <int>         <dbl>
##   1    Under 15  female     2         1        50.000000
##   1    Under 15    male     3         3       100.000000
##   1    15 to 50  female    70        68        97.142857
##   1    15 to 50    male    72        32        44.444444
##   1    Over 50   female    13        13       100.000000
##   1    Over 50     male    26         5        19.230769
#
# I have already loaded the `titanic` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

titanic_4 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
  filter(!is.na(Age)) %>%
  mutate(agecat = cut(Age, breaks = c(0, 14.99, 50, 150), 
                      include.lowest = TRUE,
                      labels = c("Under 15", "15 to 50",
                                 "Over 50"))) %>%