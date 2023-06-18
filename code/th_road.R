th_road <- 
  read_excel("rawdata/Road length.xlsx",
             range = "B4:C20")

ggplot(data = th_road)+
  geom_line(aes(x = Year, y = "Road length"))+
  geom_point(aes(x = Year, y = "Road length"))+
  labs(x = NULL, 
       y = "Road length (km)")