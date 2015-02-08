getData<-function(){
  #install.packages('sqldf')
  library(sqldf)
  data<-read.csv.sql('data/household_power_consumption.txt',header=TRUE,sep=';',sql='select * from file where Date="1/2/2007" OR Date="2/2/2007"')
  return(data)
} 