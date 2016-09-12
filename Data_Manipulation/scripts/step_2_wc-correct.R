# After the previous question, you should have transformed the `worldcup`
# data to look like this:
#
##           Time   Passes  Tackles Saves
## Abdoun      16        6        0     0
## Abe        351      101       14     0
## Abidal     180       91        6     0
## Abou Diaby 270       111       5     0
#
# Use a `dplyr` or `tidyr` function to continue working with this data so that 
# the data looks like this: 
#
##       Time   Passes  Tackles     Saves
##   208.8639 84.52101 4.191597 0.6672269
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

wc_2 <- worldcup %>% 
  select(Time, Passes, Tackles, Saves) %>%
  summarize(Time = mean(Time),
            Passes = mean(Passes),
            Tackles = mean(Tackles),
            Saves = mean(Saves))
