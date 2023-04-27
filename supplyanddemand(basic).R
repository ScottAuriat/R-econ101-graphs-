#Fig 3.1 ----


demand <- Hmisc::bezier(c(0, 5, 10),
                        c(10, 5, 0)) %>%
  as_data_frame()

supply <- Hmisc::bezier(x = c(1, 5, 9),
                        y = c(1, 5, 9)) %>%
  as_data_frame()

demand2 <- Hmisc::bezier(c(0, 5, 10),
                         c(5, 2.5, 0)) %>%
  as_data_frame()

ggplot(mapping = aes(x = x, y = y)) + 
  geom_path(data = supply, color = "#FF4036", size = 1,alpha=0) + 
  geom_path(data = demand, color = "#0073D9", size = 2, alpha=0) + 
  geom_path(data = demand2, color = "#0073D9", size = 2) + 
  theme_classic() + 
  coord_equal()+
  geom_point(aes(x=5, y=2.5), colour="black",size=4)+
  geom_text(aes(x = 4.7, y = 2.2, label = "A"),col="black",size=6)+
  scale_x_continuous(expand = c(0, 0), breaks = c(0,5,10),
                     labels = expression(0,32,64)) +
  scale_y_continuous(expand = c(0, 0), breaks = c(2.5,5),
                     labels = expression(8,16))+
  labs(x = "Bread", y = "Cheese",
       title = "") +
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text=element_text(size=15),
        axis.title=element_text(size=18,face="bold", hjust=1))+
  theme(plot.title = element_text(size=20))+
  theme(text = element_text(size=20),
        axis.text.x = element_text(size=18)) +
  geom_segment(aes(x = 5, y = 0, xend = 5, yend = 2.5), lty = "dotted") +
  geom_segment(aes(x = 0, y = 2.5, xend = 5, yend = 2.5), lty = "dotted")

