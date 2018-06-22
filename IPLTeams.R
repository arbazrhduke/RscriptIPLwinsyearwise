# Vector that holds the 8 major cities played the Indian Premiere League
Teams <- c('Rajashthan','Mohali','Chennai','Delhi','Mumbai','Kolkatta','Bengaluru','Hyderabad')

# Vector that holds the Years in which the major 8 cities played in the Indian Premiere League

Years <- c('2008','2009','2010','2011','2012','2013','2014','2015','2018')

# Vectors that hold no of mathces each year these teams played.
Rgames<-c(14,14,14,14,16,16,14,14,14)
Mgames<-c(14,14,14,14,16,16,14,14,14)
Cgames<-c(14,14,14,14,16,16,14,14,14)
Dgames<-c(14,14,14,14,16,16,14,14,14)
MIgames<-c(14,14,14,14,16,16,14,14,14)
Kgames<-c(14,14,14,14,16,16,14,14,14)
Bgames<-c(14,14,14,14,16,16,14,14,14)
Hgames<-c(14,14,14,14,16,16,14,14,14)

# matrix holding yearwise how many mathes all team played
Games <- cbind(Rgames,Mgames,Cgames,Dgames,MIgames,Kgames,Bgames,Hgames)

rownames(Games) <- Years
colnames(Games) <- Teams

# vectors containing no of matches won by each team every year they played.
Rwon <- c(11,6,6,6,7,10,7,7,7)
Mwon <- c(10,7,4,7,8,8,11,3,6)
CWon <- c(8,8,7,9,8,8,9,9,9)
Dwon <- c(7,10,7,4,11,3,2,5,5)
MIWon<- c(7,5,10,9,10,11,7,8,6)
Kwon <- c(6,3,7,8,10,6,9,7,8)
Bwon <- c(4,8,7,9,8,9,5,7,6)
Hwon <- c(2,7,8,6,4,10,6,7,9)

# matrix holding no of wins for each year these teams played
Wins <- cbind(Rwon,Mwon,CWon,Dwon,MIWon,Kwon,Bwon,Hwon)
# function call that adds row names and columns to the matrix passed as an argument.

rownames(Wins)<- Years
colnames(Wins)<- Teams
rm(Rwon,Mwon,CWon,Dwon,MIWon,Kwon,Bwon,Hwon)
rm(Rgames,Mgames,Cgames,Dgames,MIgames,Kgames,Bgames,Hgames)

Games
Wins

# plot to show wins vs no of games played by 8 major cities in ipl
matplot(Wins/Games,type='b',pch=1:8,col=c(1:8,6))
legend('bottomleft',inset=0.01,legend=Teams,col=c(1:8,6),pch=1:8,horiz=F)