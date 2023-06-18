library(tidyverse)
library(readxl)

th_road <-
  read_excel("rawdata/Road length.xlsx",
             range = "B5:C20",
             col_names = c("year", "rdlength"))

# Find max and min value 
maxv <- ceiling(max(th_road$rdlength))
minv <- floor(min(th_road$rdlength))

ggplot(data = th_road)+
  geom_line(aes(x = year, 
                y = rdlength),
            color ="red", # Color the line
            show.legend = TRUE)+ # Remove legend from the line plot
  geom_point(aes(x = year, 
                 y = rdlength),
             shape = 4, # Change the shape of the point
             size = 2, # Adjust the size of the point
             color = "blue")+ # Color the shape
  scale_x_continuous(breaks = seq(2007,2022,3))+
  labs(x = NULL, 
       y = "Road length (km)")