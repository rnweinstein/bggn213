# Class 5 Data Visualization

plot(1:5)

# Base R plot is quick but kinda ugly
# We will use ggplot2, and add on package

library(ggplot2)
#must load ggplot2 to use it

plot(cars)


# Every ggplot has at least 3 layers:
# data + aes + geoms

p <- ggplot(data = cars) +
  aes(x=speed, y=dist) +
  geom_point()
  
p + geom_line()

p + geom_smooth(method=lm)

p + labs(title="Generic Graph Title", subtitle="Generic Graph Subtitle", caption="Generic Graph Caption") +
  xlab("Speed(MPH)")


url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

ggplot(genes) + 
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()+
  scale_colour_manual(values=c("blue","gray","red")) +
  labs(title="Gene Expresion Changes Upon Drug Treatment",
       x="Control (no drug) ",
       y="Drug Treatment")


