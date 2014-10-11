d<-read.table("household_power_consumption.txt",
              header=TRUE,sep=";",colClass="character") 
d$Date<-as.Date(d$Date,"%d/%m/%Y")
subdata<-subset(d,Date==as.Date("2007-02-01")| Date==as.Date("2007-02-02"))
hist(as.numeric(subdata$Global_active_power),col="red",xlab=
         " Global active Power (kilowatts)",main=" Global active power ")
dev.copy(png,"plot1.png")
dev.off()

##?readLines subset using it
##default is 480x480 pixels
##https://class.coursera.org/exdata-006/forum/thread?thread_id=10
##Github uploading 
##https://class.coursera.org/exdata-006/forum/thread?thread_id=30