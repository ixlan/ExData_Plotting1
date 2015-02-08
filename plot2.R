source('getData.R');
source('convertDates.R');
data<-getData();
data<-convertDates(data);
x<-data$DateTime;
y<-data$Global_active_power;
png(file='plots/plot2.png',width=480,height=480);
plot(x,y,xlab = NA,ylab = 'Global Active Power (kilowatts)',type='l');
dev.off();


