# After the previous question, you should have transformed the `worldcup`
# data to look like this:
#
##      var           mean
##     Time    208.8638655
##   Passes     84.5210084
##  Tackles      4.1915966
##    Saves      0.6672269
#
# Now add a `dplyr` or `tidyr` function to the pipe chain in the 
# code at the bottom of this script so that the `wc_4` data frame looks 
# like this, with variable means rounded to one decimal place: 
#
##      var     mean
##     Time    208.9
##   Passes     84.5
##  Tackles      4.2
##    Saves      0.7
#
# I have already loaded the `worldcup` data frame for you, so you 
# can explore it and test out your code in the console.
#
# When you are ready submit your answer, save the script and type 
# submit(), or type reset() to reset the script to its original 
# state. 

wc_4 <- worldcup %>% 
  select(Time, Passes, Tackles, Saves) %>%
  summarize(Time = mean(Time),
            Passes = mean(Passes),
            Tackles = mean(Tackles),
            Saves = mean(Saves)) %>%
  gather(var, mean) %>%
