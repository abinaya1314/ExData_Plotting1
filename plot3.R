setwd("D:/r workspace/ExData_Plotting1")

d<-read.csv2("household_power_consumption.csv",colClasses = "character")
library(dplyr)
rdata<-subset(d,d$Date=="2/2/2007"| d$Date=="1/2/2007")
reqdata<-as.matrix(rdata)
library(lubridate)
datetime<-paste(reqdata[,1],reqdata[,2])
x<-dmy_hms(datetime)
y1<-as.numeric(reqdata[,7])
y2<-as.numeric(reqdata[,8])
y3<-as.numeric(reqdata[,9])

png("plot3.png",width = 480,height = 480)


plot(x,y1,type="n",col="Black",ylim = c(0,40),ylab="Energy sub metering",xlab="")

lines(x,y1,col="Black")
lines(x,y2,col="Red")
lines(x,y3,col="Blue")
legend("topright",lty =1,col = c("Black","Red","Blue"),
       legend = c("sub_metering_1","sub_metering_2","sub_metering_3"))

dev.off()