data<-read.csv2("household_power_consumption.txt")
data
hpc<-subset(data, Date=="1/2/2007" |Date=="2/2/2007")
str(hpc)
globala<-as.numeric(hpc$Global_active_power)
plot.ts(globala,xlab=" ",ylab="Global Active Power (kilowatts)", xaxt="n")
axis(1, at= c(0,1440,2880) ,lab=c("Thu","Fri","Sat"))
dev.copy(png,file="plot2.png")
dev.off()







  
  