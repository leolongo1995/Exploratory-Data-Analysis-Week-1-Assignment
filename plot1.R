setwd("/Users/leonardolongo/Desktop/Coursera")
data<-read.csv("household_power_consumption.txt",header=T,sep=";",na.strings="?",nrows=2075259,check.names=F,stringsAsFactors=F,comment.char="",quote="\"")
dat<-subset(data,Date %in% c("1/2/2007","2/2/2007"))
dat$Date<-as.Date(dat$Date,format="%d/%m/%y")


##plot1
hist(dat$Global_active_power,main="Global Active Power",xlab="Global active power",ylab="Frequency",col="green")

png("plot1.png", width=480, height=480)
dev.off()