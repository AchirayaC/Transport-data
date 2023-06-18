library(tidyverse)
library(readxl)

th_pop <- 
  read_excel("rawdata/Thailand population.xlsx",
           range = "C4:AG5") %>% 
  pivot_longer(-Parameter, names_to = "year", values_to = "pop")

ggplot(data = th_pop %>% filter(year >= 2007)
       )+
geom_line(aes(x = year, y = pop/10^6, group = Parameter))+
  geom_point(aes(x = year, y = pop/10^6, group = Parameter))+
  scale_x_discrete(breaks = seq(2007, 2022, 1))+
  scale_y_continuous(breaks = seq(0, 70, 10), 
                     limits = c(0,70))+
  labs(x = NULL, 
       y = "Thai population (million person)")