electric_power <- read.csv2("household_power_consumption.subset.csv");
png(file = "plot1.png", width=480, height=480);
hist(as.numeric(Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)");
dev.off();


