# After the previous question, you should have transformed the 
# `worldcup` data to look like this:
#
##           Time   Passes  Tackles Saves
## Abdoun      16        6        0     0
## Abe        351      101       14     0
## Abidal     180       91        6     0
## Abou Diaby 270       111       5     0
#
# Now add a `dplyr` or `tidyr` function to the pipe chain in the 
# code at the bottom of this script so that `wc_2` data frame looks 
# like this, with four columns, and a single observation (the 
# mean value of each variable): 
#
##       Time   Passes  Tackles     Saves
##   208.8639 84.52101 4.191597 0.6672269
#
# I have already loaded the `worldcup` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

wc_2 <- worldcup %>% 
  select(Time, Passes, Tackles, Saves) %>%
