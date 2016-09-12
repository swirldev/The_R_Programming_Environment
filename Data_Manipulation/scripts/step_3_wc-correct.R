# After the previous question, you should have transformed the `worldcup`
# data to look like this:
#
##       Time   Passes  Tackles     Saves
##   208.8639 84.52101 4.191597 0.6672269
#
# Use a `dplyr` or `tidyr` function to continue working with this data so that 
# it looks like this: 
#
##      var           mean
##     Time    208.8638655
##   Passes     84.5210084
##  Tackles      4.1915966
##    Saves      0.6672269
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

wc_3 <- worldcup %>% 
  select(Time, Passes, Tackles, Saves) %>%
  summarize(Time = mean(Time),
            Passes = mean(Passes),
            Tackles = mean(Tackles),
            Saves = mean(Saves)) %>%
  gather(var, mean)
