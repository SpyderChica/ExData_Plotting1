#Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots below, all of which were constructed using the base plotting system.
df = read.csv("household_power_consumption.txt", sep = ";", na.strings="?")
df <- subset(df, df$Date == "1/2/2007" | df$Date == "2/2/2007")
df$Date <- as.Date(strptime(df$Date, "%d/%m/%Y"))
png("plot1.png")
hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()