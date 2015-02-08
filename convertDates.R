convertDates<-function(data){
  # convert Date field into Date obj
  data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S") 
  # select dates from Thirsday to Saturday
  data<-data[weekdays(data$DateTime,TRUE) %in% c('Thu','Fri','Sat'),][-(1:2)]
  return(data);
}