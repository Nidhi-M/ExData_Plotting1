png("plot4.png")
par(mfrow=c(2,2)) ##mar=c(5,4,4,2) see if needed

##plot 1
plot(subdata$dateTime,subdata$Global_active_power,type="l",
     ylab="Global active Power (kilowatts)",xlab="")
##plot 2
plot(subdata$dateTime,subdata$Voltage,type="l",
          ylab="voltage",xlab="datetime")
##plot 3
 plot(subdata$dateTime,subdata$Sub_metering_1,type="l",xlab=" ",ylab="Energy Sub Meter")
lines(subdata$dateTime,subdata$Sub_metering_2,type="l",col="red")
lines(subdata$dateTime,subdata$Sub_metering_3,type="l",col="blue")
 legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),
               col=c("black","red","blue"),lty=c(1,1,1),bty="n",cex=0.7
 )##cex=0.5,inset=0.2
##plot 4
plot(subdata$dateTime,subdata$Global_reactive_power,type="l",
     ylab="Global reactive Power (kilowatts)",xlab="datetime")


dev.off()