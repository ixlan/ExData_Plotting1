source('getData.R');
data<-getData();
x<-data$Global_active_power;
# saving in png
png(file='plots/plot1.png',width=480,height=480)
hist(x,pch=20,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red', ylim = c(0,1200))
dev.off() 
