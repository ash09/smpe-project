MyData3 <- read.csv(file="obj3.csv", header=TRUE)

question3 =ggplot(data = MyData3, aes(MyData3$post.viewers,MyData3$Total.Interactions, color = MyData3$CBO2002)) +geom_point(color="red") + labs(y = "Post viewers", x = "Total Interactions") + geom_smooth(method= "lm",color= "black", formula = y ~ 0 + x)+ggtitle("Correlation between The post views and The number of interaction")

question3


