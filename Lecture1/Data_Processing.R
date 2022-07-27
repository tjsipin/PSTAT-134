# tidyverse

library(tidyverse)
library(dplyr)

data1 = read.csv('database.csv', header=TRUE)
data1 = data1 %>% 
  drop_na() %>% 
  filter(var5!=2) %>%
  mutate(var6 = var1 + var4) %>% 
  within({var2 = factor(var2)
  factor(var5)}) %>%
  select(var2, var5, var6)

data1

data2 <- read.csv('database.csv', header=TRUE)
data2 <- data2 %>%
  drop_na() %>%
  within(var2 <- factor(var2)) %>%
  group_by(var2) %>%
  summarise(mean_var1 = mean(var1))

data2

data3 = read.csv('database.csv', header=TRUE)

data3 = data3 %>%
  mutate(var2 = factor(var2))

# mutate vs. within?