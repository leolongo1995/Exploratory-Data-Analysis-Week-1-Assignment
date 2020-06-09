setwd("/Users/leonardolongo/Desktop/Coursera")
data<-read.csv("household_power_consumption.txt",header=T,sep=";",na.strings="?",nrows=2075259,check.names=F,stringsAsFactors=F,comment.char="",quote="\"")
dat<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
dat$Date<-as.Date(dat$Date,format="%d/%m/%y")
time<-paste(as.Date(dat$Date),dat$Time)
dat$Datetime<-as.POSIXct(time)

##plot 3
with(dat, {
  plot(Sub_metering_1~Datetime, type="l",
       xlab="",ylab="Global Active Power")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


png("plot3.png", width=480, height=480)
dev.off()