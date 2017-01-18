MyData4 <- read.csv(file="obj4.csv", header=TRUE)
fill <- "#4271AE"
line <- "#1F3552"

question4 = ggplot(data = MyData4, aes(x = MyData4$Type, y = MyData4$Total.Interactions))+geom_boxplot(fill = fill, colour = line,alpha = 0.4)+scale_y_continuous(name = "Total Interactions",breaks = seq(0, 2000, 100),limits=c(0, 2000))+scale_x_discrete(name = "Type of Post") + ggtitle("Interactions by Type")

question4

fill <- "gold1"
line <- "goldenrod2"
question4 = ggplot(data = MyData4, aes(x = MyData4$Type, y = MyData4$post.viewers))+geom_boxplot(fill = fill, colour = line,alpha = 0.4)+scale_y_continuous(name = "Post Viewers",breaks = seq(0, 160000, 10000),limits=c(0, 160000))+scale_x_discrete(name = "Type of Post") + ggtitle("Post viewers by Type")

question4



