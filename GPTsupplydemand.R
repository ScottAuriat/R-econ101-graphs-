#is this
supply <- c(10, 20, 30, 40, 50)
demand <- c(50, 40, 30, 20, 10)
df <- data.frame(supply, demand)
library(ggplot2)
ggplot(data = df)
ggplot(data = df) +
  geom_line(aes(x = supply, y = demand, color = "Demand")) +
  geom_line(aes(x = supply, y = supply, color = "Supply"))
ggplot(data = df) +
  geom_line(aes(x = supply, y = demand, color = "Demand")) +
  geom_line(aes(x = supply, y = supply, color = "Supply")) +
  xlab("Quantity") +
  ylab("Price") +
  ggtitle("Supply and Demand Plot") 
