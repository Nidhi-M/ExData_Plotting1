 d<-read.table("household_power_consumption.txt",
              header=TRUE,sep=";",colClass="character") 
d$Date<-as.Date(d$Date,"%d/%m/%Y")
subdata<-subset(d,Date==as.Date("2007-02-01")| Date==as.Date("2007-02-02"))

subdata$dateTime=
  strptime(paste(subdata$Date, subdata$Time), format="%Y-%m-%d %H:%M:%S") 


plot(subdata$dateTime,subdata$Global_active_power,type="l",
     ylab="Global active Power (kilowatts)",xlab="")
dev.copy(png,"plot2.png")

dev.off()
