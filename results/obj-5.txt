obj5<-read.csv("obj5.csv", header = TRUE)
inter=c(0)
views=c(0)
v=c(0)
I=c(0)
for(i in 0:23)
  {v[i]=0
  I[i]=0
  inter[i]=0
  views[i]=0}
for(i in 1:500)
  { v[obj5$Post.Hour[i]]=v[obj5$Post.Hour[i]]+1
I[obj5$Post.Hour[i]]=I[obj5$Post.Hour[i]]+1
 views[obj5$Post.Hour[i]]=views[obj5$Post.Hour[i]]+obj5$post.viewers[i]
inter[obj5$Post.Hour[i]]=inter[obj5$Post.Hour[i]]+obj5$Total.Interactions[i]}

  for(i in 0:23) 
  {views[i]=views[i]/v[i]
    inter[i]=inter[i]/I[i]}

df= as.data.frame(cbind(Overall.Cond= 1:23,views))
df
df.freq= as.vector(rep(df$Overall.Cond, df$views))
hist(df.freq,breaks = 24,plot = TRUE,col="green",xlim = c(1,23),main="post views average per one hour intervals ",xlab="time of the post",ylab="post views average ")
axis(side=2, at=c(0:8)*5000)
axis(side=1, at=c(0:23))

df= as.data.frame(cbind(Overall.Cond= 1:23,inter))
df
df.freq= as.vector(rep(df$Overall.Cond, df$inter))
hist(df.freq,breaks = 24,plot = TRUE,col="green",xlim = c(1,23),main="interactions average per one hour intervals ",xlab="time of the post",ylab="interactions average")
axis(side=2, at=c(0:9)*500)
axis(side=1, at=c(0:23))






