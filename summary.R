# year with the highest black population incarceration
state_pop %>%
  group_by(year) %>%
  summarize(avg_year = max(black_prison_pop, na.rm = T)) %>%
  arrange(desc(avg_year)) %>%
  head(1)

# Highest Average Incarceration Rate for the Black Population
  state_pop %>%
    group_by(year) %>%
    summarize(avg_year = max(black_prison_pop, na.rm = T)) %>%
    arrange(desc(avg_year)) %>%
    head(1)

# state with the highest incarceration rate for black people
state_pop %>%
  group_by(state) %>%
  summarize(avg_state = max(black_prison_pop, na.rm = T)) %>%
  arrange(desc(avg_state)) %>%
  head(1)

	
# highest average rate of incarceration for white population
  state_pop %>%
  group_by(year) %>%
  summarize(avg_year = max(white_prison_pop, na.rm = T)) %>%
  arrange(desc(avg_year)) %>%
  head(1)
			
# average rate of incarceration for AAPI population 
state_pop %>%
  group_by(year) %>%
  summarize(aapi_avg = max(aapi_prison_pop, na.rm = T)) %>%
  arrange(desc(aapi_avg)) %>%
  head(1)

#Max incarceration for latino population
state_pop %>%
  group_by(year) %>%
  summarize(lat_avg = max(latinx_prison_pop, na.rm = T)) %>%
  arrange(desc(lat_avg)) %>%
  head(1)

