
# code for line plot/Chart 1
file_path <- "https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-pop.csv?raw=true"

# Load the CSV file
state_pop <- read.csv(file_path)

#Load Package
library(tidyverse) # for general code
library(ggplot2) # for graph
library(dplyr) # for variables

# dplyr code for variable
Black_pop <- state_pop %>%
  group_by(year) %>%
  summarize(avg_ba = mean(black_prison_pop, na.rm = T), avg_wh = mean(white_prison_pop, na.rm = T)) %>%
  filter(year > 1995, year < 2005) 
# code for line plot
g1 = ggplot(data = Black_pop, aes(x=year)) +
  geom_line(aes(y = avg_ba, colour = "black")) +
  geom_line(aes(y = avg_wh, colour = "white"))
g1 + labs(title="Scatterplot of black population incarceration vs white population incarceration", x="year", y="Incarceration Rate (%)", caption="Data collected from the Vera Institute")
