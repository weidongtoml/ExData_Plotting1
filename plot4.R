
electric_power <- read.csv2("household_power_consumption.subset.csv");
date_time <- paste(electric_power$Date, electric_power$Time, sep="|");
date_time_c <- strptime(date_time, format="%d/%m/%Y|%H:%M:%S");
metering_1 <- as.numeric(electric_power$Sub_metering_1);
metering_2 <- as.numeric(electric_power$Sub_metering_2);
metering_3 <- as.numeric(electric_power$Sub_metering_3);

png(file = "plot4.png", width=480, height=480);
par(mar = c(5, 5, 2, 2));
par(mfcol=c(2, 2));
# Time series of Global Active Power
plot(date_time_c, as.numeric(electric_power$Global_active_power), "l", ylab = "Global Active Power");
# Time series of metering
plot(date_time_c, metering_1, "l", xlab="", ylab="Energy On Metering", ylim=c(0, 20));
lines(date_time_c, metering_2, "l", col="red");
lines(date_time_c, metering_3, "l", col="blue");
legend("topright",  lty="solid", col = c("black", "red", "blue"), legend=c("metering_1", "metering_2", "metering_3"));
# Time series of Voltage
plot(date_time_c, as.numeric(electric_power$Voltage), "l", ylab = "Voltage");
# Time series of Global reative power
plot(date_time_c, as.numeric(electric_power$Global_reactive_power), "l", ylab = "Global_reactive_power");
dev.off();
