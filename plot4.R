data<-read.csv2("household_power_consumption.txt")
hpc<-subset(data, Date=="1/2/2007" |Date=="2/2/2007")

png("E:/COURSERA R/TRABAJOS R/plot4.png") ## create the png file first and save it in a folder on your computer
matrix(c(1:4), nrow=2, byrow=FALSE)
layout(matrix(c(1:4), nrow=2, byrow=FALSE))


##Graph 1
globala<-as.numeric(hpc$Global_active_power)
plot.ts(globala,xlab=" ",ylab="Global Active Power", xaxt="n")
axis(1, at= c(0,1440,2880) ,lab=c("Thu","Fri","Sat"))

##Graph 2
sub1<-as.numeric(hpc$Sub_metering_1)
sub2<-as.numeric(hpc$Sub_metering_2)
sub3<-as.numeric(hpc$Sub_metering_3)
plot.ts(sub1,xlab=" ",ylab="Energy Sub Metering", xaxt ="n")
axis(1, at= c(0,1440,2880) ,lab=c("Thu","Fri","Sat"))
lines(sub2,col="red")
lines(sub3,col="blue")
legend("topright",pch="-",col= c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       bty = "n")

##Graph 3
volt<-as.numeric(hpc$Voltage)
plot.ts(volt,xlab="datetime",ylab="Voltage", xaxt="n")
axis(1, at= c(0,1440,2880) ,lab=c("Thu","Fri","Sat"))

##Graph 4

globalr<-as.numeric(hpc$Global_reactive_power)
plot.ts(globalr,xlab="datetime",ylab="Global_reactive_power", xaxt="n")
axis(1, at= c(0,1440,2880) ,lab=c("Thu","Fri","Sat"))


dev.off()


