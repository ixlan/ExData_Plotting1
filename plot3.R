source('getData.R');
source('convertDates.R');
data<-getData();
data<-convertDates(data);
# get the range for the x and y axis
xrange<-range(data$DateTime)
yrange<-range(data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)
png(file='plots/plot3.png',width=480,height=480);
plot(xrange,yrange,type='n',xlab = NA,ylab = 'Energy sub metering')
lines(data$DateTime,data$Sub_metering_1, col='black')
lines(data$DateTime,data$Sub_metering_2, col='red')
lines(data$DateTime,data$Sub_metering_3, col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),
       lty=c(1,1),
       lwd=c(2.5,2.5),
)
dev.off()


