# code for line plot/Chart 3
file_path <- "https://github.com/melaniewalsh/Neat-Datasets/blob/main/us-prison-pop.csv?raw=true"

# Load the CSV file
state_pop <- read.csv(file_path)

#Load Packages
library(tidyverse) # for general code
library(usmap) # to get maps
library(dplyr) # variable and statistic data
libary(ggplot2) # for graphing

# dplyr code for variable
Bl_map <- state_pop %>%
  group_by(state) %>%
  summarize(avg_bo = mean(black_prison_pop, na.rm = T)) %>%
  filter(avg_bo != "NaN")

# code for map
  plot_usmap(data = Bl_map, values = "avg_bo" , labels=FALSE) +
  scale_fill_continuous(low = "purple", high = "red", 
                        name = "Incarceration rate",
                        limits = c(10,100)) +
  labs(title = "Incarceration rate for the Black population in different states across the US") +
  theme_minimal() 
