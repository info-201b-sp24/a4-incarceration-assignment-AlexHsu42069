# code for line plot/Chart 2
file_path <- "https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-pop.csv?raw=true"

# Load the CSV file
state_pop <- read.csv(file_path)

#Load Packages
library(tidyverse) # for general code
library(ggplot2) # for graph
library(dplyr) # for variables

# dplyr code for variable
 urban_pop <- state_pop %>%
 group_by(urbanicity) %>%
 summarize(b_avg = mean(black_prison_pop, na.rm = T), w_avg = mean(white_prison_pop, na.rm = T)) %>%
 filter(b_avg != "NaN")
 
 Stated_pop <- state_pop %>%
   group_by(state) %>%
   summarize(b_avg = mean(black_prison_pop, na.rm = T), w_avg = mean(white_prison_pop, na.rm = T)) %>%
 filter(b_avg != "NaN")
 
 full_state <- full_join(Stated_pop, urban_pop)

#code for ggplot
 g1 = ggplot(data = full_state, aes(x=state, y=b_avg, colour=urbanicity, group = urbanicity)) +
   geom_point() +
   geom_line() +
   theme(axis.text.x = element_text(angle = 90)) 
 g1 + labs(title="Average Incarceration rate of the Black population based on state and urbanicity", y="Incarceration Rate (%)", x="State", caption="Data collected from the Vera Institute")
 