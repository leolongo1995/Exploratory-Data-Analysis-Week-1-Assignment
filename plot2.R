setwd("/Users/leonardolongo/Desktop/Coursera")
data<-read.csv("household_power_consumption.txt",header=T,sep=";",na.strings="?",nrows=2075259,check.names=F,stringsAsFactors=F,comment.char="",quote="\"")
dat<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
dat$Date<-as.Date(dat$Date,format="%d/%m/%y")
time<-paste(as.Date(dat$Date),dat$Time)
dat$Datetime<-as.POSIXct(time)

##plot 2
with(dat, {
  plot(Global_active_power~Datetime, type="l",
       xlab="",ylab="Global Active Power")
})

png("plot2.png", width=480, height=480)
dev.off()