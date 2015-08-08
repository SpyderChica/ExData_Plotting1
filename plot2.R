#Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots below, all of which were constructed using the base plotting system.
df = read.csv("household_power_consumption.txt", sep = ";", na.strings="?", stringsAsFactors = FALSE)
df <- subset(df, df$Date == "1/2/2007" | df$Date == "2/2/2007")
df$DT <- paste(df$Date,df$Time,sep="_")
df$DT <- strptime(df$DT, "%d/%m/%Y_%H:%M:%S")
png("plot2.png")
plot(y = df$Global_active_power, x= df$DT, ylab="Global Active Power (kilowatts)",type = "l",xlab="")
dev.off()