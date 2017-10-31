setwd('/Users/ZHCVC/Desktop/UCBerkeley/Courses/COMPSCI 294-136/Project')
a1p1 = read.csv('a01p01.csv')
library(ggplot2)

data = a1p1[which(a1p1$timepoint<=8 & a1p1$unit == 'T'),]
p <- ggplot(data, aes(timepoint,signal),col='steelblue') + 
  geom_line(col='steelblue') + 
  facet_grid(sensor ~ .,scales = "free_y") +
  labs(title="Signal for Activity 1 Subject 1",x="Time/s", y = "Signal Intensity")
ggsave("signal.png",device="png",width=12,height=8,dpi=600)
