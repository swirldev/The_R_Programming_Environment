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
# Use a `dplyr` or `tidyr` function or functions to change the `titanic` dataset so that the 
# first six lines look like this, where you've added, for each combination of 
# `Pclass`, `agecat`, and `Sex`, the columns `N` (total number of passengers 
# in that group), `survivors` (the number of people in the group who survived),
# and `perc_survived` (the percent of people in the group who survived). 
#
## Pclass   agecat    Sex      N     survivors   perc_survived
## <int>   <fctr>    <chr>   <int>     <int>         <dbl>
##   1    Under 15  female     2         1         50.00000
##   1    Under 15    male     3         3        100.00000
##   1    15 to 50  female    68        67         98.52941
##   1    15 to 50    male    69        31         44.92754
##   1    Over 50   female    15        14         93.33333
##   1    Over 50     male    29         6         20.68966
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

titanic_4 <- titanic %>% 
  select(Survived, Pclass, Age, Sex) %>%
  filter(!is.na(Age)) %>%
  mutate(agecat = cut(Age, breaks = c(0, 14.99, 50, 150), 
                      include.lowest = TRUE,
                      labels = c("Under 15", "15 to 50", "Over 50"))) %>%
  group_by(Pclass, agecat, Sex) %>%
  summarize(N = n(),
            survivors = sum(Survived == 1),
            perc_survived = 100 * survivors / N,
            .groups = "drop")
