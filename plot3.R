d<-read.table("household_power_consumption.txt",
              header=TRUE,sep=";",colClass="character")
d$Date<-as.Date(d$Date,"%d/%m/%Y")
subdata<-subset(d,Date==as.Date("2007-02-01")| Date==as.Date("2007-02-02"))

subdata$dateTime=
  strptime(paste(subdata$Date, subdata$Time), format="%Y-%m-%d %H:%M:%S")

png("plot3.png")
plot(subdata$dateTime,subdata$Sub_metering_1,type="l",xlab=" ",ylab="Energy Sub Meter")
lines(subdata$dateTime,subdata$Sub_metering_2,type="l",col="red")
lines(subdata$dateTime,subdata$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),
       col=c("black","red","blue"),lty=c(1,1,1))

<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> dc225b5e1c19d659cb861003a13eac297f363b9a
