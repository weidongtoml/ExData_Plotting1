electric_power <- read.csv2("household_power_consumption.subset.csv");
png(file = "plot3.png", width=480, height=480);
date_time <- paste(electric_power$Date, electric_power$Time, sep="|");
date_time_c <- strptime(date_time, format="%d/%m/%Y|%H:%M:%S");
metering_1 <- as.numeric(electric_power$Sub_metering_1);
metering_2 <- as.numeric(electric_power$Sub_metering_2);
metering_3 <- as.numeric(electric_power$Sub_metering_3);
plot(date_time_c, metering_1, "l", xlab="", ylab="Energy On Metering", ylim=c(0, 20));
lines(date_time_c, metering_2, "l", col="red");
lines(date_time_c, metering_3, "l", col="blue");
legend("topleft",  lty="solid", col = c("black", "red", "blue"), legend=c("metering_1", "metering_2", "metering_3"));
dev.off()
