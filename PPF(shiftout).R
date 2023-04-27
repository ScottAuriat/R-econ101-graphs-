PPP2 <- Hmisc::bezier(x = c(0, 9.4, 10),
                      y = c(15, 7, 0)) %>%
  as_data_frame()


ggplot(mapping = aes(x = x, y = y)) + 
  geom_path(data = supply, color = "#FF4036", size = 1,alpha=0) + 
  geom_path(data = demand, color = "#0073D9", size = 1,alpha=0) + 
  geom_path(data = PPP, color = "#0073D9", size = 2) + 
  geom_path(data = PPP2, color = "#FF4036", size = 2) +
  theme_classic() + 
  coord_equal()+
  geom_point(aes(x=6, y=6), colour="black",size=4)+
  geom_text(aes(x = 5.7, y = 5.7, label = "A"),col="black",size=6)+
  geom_segment(aes(x = 0, y = 6, xend = 6, yend = 6), lty = "dotted") +
  geom_segment(aes(x = 6, y = 0, xend = 6, yend = 6), lty = "dotted")+
  geom_point(aes(x=7.2, y=7.2), colour="black",size=4)+
  geom_text(aes(x = 7.5, y = 7.5, label = "G"),col="black",size=6)+
  geom_segment(aes(x = 0, y = 7.2, xend = 7.2, yend = 7.2), lty = "dotted") +
  geom_segment(aes(x = 7.2, y = 0, xend = 7.2, yend = 7.2), lty = "dotted")+
  scale_x_continuous(expand = c(0, 0), breaks = c(0,10,6,1,7.2),
                     labels = expression(0,'2.0','1.2','0.6','1.3')) +
  scale_y_continuous(expand = c(0, 0), breaks = c(10,6,15,7.2),
                     labels = expression('6.0','4.4','8.4','4.6'))+
  labs(x = "Quantity of Bikes Produced (in Thousands)", y = "Quantity of Beer Produced (in Thousands)",
       title = "") +
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text=element_text(size=15),
        axis.title=element_text(size=18,face="bold", hjust=1))+
  theme(plot.title = element_text(size=20))+
  theme(text = element_text(size=15),
        axis.text.x = element_text(size=15)) +
  annotate("segment", x = 3.8, xend = 4.4, y = 8, yend = 10.3,
           arrow = arrow(length = unit(1, "lines")), colour = "black",size = 1.7)

z <- c(1,2)


