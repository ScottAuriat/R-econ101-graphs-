# packages to install 
#if packages are not installed remove the # to instal them first
#install.packages("ggplot2")
#install.packages("dplyr")
#install.packages("bezier")
#install.packages("Hmisc")
#install.packages("proxy")
#install.packages("grid")
#install.packages("pBrackets")
#install.packages("gridExtra")
#install.packages("tidyverse")
#install.packages("magrittr")


# more 
# packages to load 
library(dplyr)
library(ggplot2)
library(bezier)
library(Hmisc)
library(proxy)
library(grid)
library(pBrackets)
library(gridExtra)
library(tidyverse)
library(magrittr)

# PPF first plot 
demand <- Hmisc::bezier(c(0, 5, 10),
                        c(10, 5, 0)) %>%
  as.data.frame()

supply <- Hmisc::bezier(x = c(1, 5, 9),
                        y = c(1, 5, 9)) %>%
  as.data.frame()

PPP <- Hmisc::bezier(x = c(0, 7, 10),

                     y = c(10, 7, 0)) %>%
  as.data.frame()


# this new code 
ggplot(mapping = aes(x = x, y = y)) + 
  geom_path(data = supply, color = "#FF4036", size = 1,alpha=0) + 
  geom_path(data = demand, color = "#0073D9", size = 1,alpha=0) + 
  geom_path(data = PPP, color = "#0073D9", size = 2) + 
  theme_classic() + 
  coord_equal()+
  geom_point(aes(x=6, y=6), colour="black",size=4)+
  geom_text(aes(x = 6.3, y = 6.3, label = "A"),col="black",size=6)+
  geom_segment(aes(x = 0, y = 6, xend = 6, yend = 6), lty = "dotted") +
  geom_segment(aes(x = 6, y = 0, xend = 6, yend = 6), lty = "dotted")+
  geom_point(aes(x=7.5, y=4.3), colour="black",size=4)+
  geom_text(aes(x = 7.7, y = 4.65, label = "B"),col="black",size=6)+
  geom_segment(aes(x = 0, y = 4.3, xend = 7.5, yend = 4.3), lty = "dotted") +
  geom_segment(aes(x = 7.5, y = 0, xend = 7.5, yend = 4.3), lty = "dotted")+
 # geom_point(aes(x=5.03, y=5.03), colour="black",size=4)+
 # geom_point(aes(x=5.03, y=5.03), colour="black",size=4)+
  geom_label(aes(x = 9, y = 5.5, label = "Production"),col="black",size=6,label.size = NA)+
 # geom_point(aes(x=5.03, y=5.03), colour="black",size=4)+
  annotate("segment", x = 8.8, xend = 7, y = 5.5, yend = 5,
           arrow = arrow(length = unit(1, "lines")), colour = "black")+
  geom_label(aes(x = 9, y = 6, label = "Production"),col="black",size=6,label.size = NA)+
  geom_label(aes(x = 9, y = 5.5, label = "possibility"),col="black",size=6,label.size = NA)+
  geom_label(aes(x = 9, y = 5, label = "frontier"),col="black",size=6,label.size = NA)+
  scale_x_continuous(expand = c(0, 0), breaks = c(0,10,6,7.5,1.5),
                     labels = expression(0,'2.0','1.2','1.4','0.6')) +
  scale_y_continuous(expand = c(0, 0), breaks = c(10,6,4.2,3),
                     labels = expression('6.0','4.4','4.0','2.0'))+
  labs(x = "Quantity of Bikes Produced (in Thousands)", y = "Quantity of Beer Produced (in Thousands)",
       title = "") +
  theme(plot.title = element_text(hjust = 0.5))+
  theme(axis.text=element_text(size=15),
        axis.title=element_text(size=18,face="bold", hjust=1))+
  theme(plot.title = element_text(size=20))+
  theme(text = element_text(size=20),
        axis.text.x = element_text(size=18)) +
  geom_point(aes(x=1, y=3), colour="black",size=4)+
  geom_text(aes(x = 1.3, y = 3.3, label = "D"),col="black",size=6)+
  geom_segment(aes(x = 0, y = 3, xend = 1, yend = 3), lty = "dotted") +
  geom_segment(aes(x = 1, y = 0, xend = 1, yend = 3), lty = "dotted")+
  geom_point(aes(x=7.5, y=7.5), colour="black",size=4)+
  geom_text(aes(x = 7.8, y = 7.8, label = "C"),col="black",size=6)+
  geom_text(aes(x = 2, y = 9.4, label = "F"),col="black",size=6)+
  geom_text(aes(x = 9.4, y = 2, label = "E"),col="black",size=6)+
  geom_point(aes(x=2, y=9), colour="black",size=4)+
  geom_point(aes(x=9, y=2), colour="black",size=4)

x <- c(1,2,3)
