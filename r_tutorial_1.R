name_first <- "ally"
name_last <- "beach"
full_name <- paste(name_first, name_last, sep=" ")
print(full_name)
nums <- seq(1, 10)
print(nums)

library(tidyverse)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)
x <- filter(diamonds, carat > 3)
print(x)

library(dplyr)
library(nycflights13)

not_cancelled <- flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))

not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay))

