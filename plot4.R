source('getData.R');
source('convertDates.R');
data<-getData();
data<-convertDates(data);

png(file='plots/plot4.png',width=480,height=480)
# multipanel
par(mfrow=c(2,2))

# fig 1
plot(data$DateTime,data$Global_active_power,xlab = NA,ylab = 'Global Active Power (kilowatts)',type='l');

# fig 2
plot(data$DateTime,data$Voltage,xlab = 'datatime',ylab = 'Voltage',type='l');

# fig 3
# get the range for the x and y axis
xrange<-range(data$DateTime)
yrange<-range(data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)
plot(xrange,yrange,type='n',xlab = NA,ylab = 'Energy sub metering')
lines(data$DateTime,data$Sub_metering_1, col='black')
lines(data$DateTime,data$Sub_metering_2, col='red')
lines(data$DateTime,data$Sub_metering_3, col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),
       lty=c(1,1),
       lwd=c(2.5,2.5),
)

# fig 4
plot(data$DateTime,data$Global_reactive_power,xlab = 'datatime',ylab = 'Global_reactive_power',type='l');

dev.off()