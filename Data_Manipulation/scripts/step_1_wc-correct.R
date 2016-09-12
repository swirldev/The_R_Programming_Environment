# Use a `dplyr` or `tidyr` function to change the `worldcup` dataset so that the 
# first four lines look like this: 
#
##           Time   Passes  Tackles Saves
## Abdoun      16        6        0     0
## Abe        351      101       14     0
## Abidal     180       91        6     0
## Abou Diaby 270       111       5     0
#
# When you are ready to move on, save the script and type submit(), or type 
# reset() to reset the script to its original state.

wc_1 <- worldcup %>% 
  select(Time, Passes, Tackles, Saves)
