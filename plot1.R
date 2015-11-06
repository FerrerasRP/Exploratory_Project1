base_completa <- read.csv2("household_power_consumption.txt",header = TRUE, sep = ";", dec=".", stringsAsFactors=FALSE)

base <- subset(base_completa, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width = 480, height = 480)
hist(as.numeric(base$Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()