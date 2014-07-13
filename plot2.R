electric_power <- read.csv2("household_power_consumption.subset.csv");
png(file = "plot2.png", width=480, height=480);
date_time <- paste(electric_power$Date, electric_power$Time, sep="|");
date_time_c <- strptime(date_time, format="%d/%m/%Y|%H:%M:%S");
plot(date_time_c, as.numeric(electric_power$Global_active_power), "l", ylab = "Global Active Power (kilowatts)");
dev.off();

