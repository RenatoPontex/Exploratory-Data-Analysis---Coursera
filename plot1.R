data<-read.csv2("household_power_consumption.txt")
data
hpc<-subset(data, Date=="1/2/2007" |Date=="2/2/2007")
str(hpc)
globala<-as.numeric(hpc$Global_active_power)
hist(globala,col="red",main= "Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()
