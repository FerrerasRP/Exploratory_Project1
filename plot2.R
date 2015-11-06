base_completa <- read.csv2("household_power_consumption.txt",header = TRUE, sep = ";", dec=".", stringsAsFactors=FALSE)

base <- subset(base_completa, Date == "1/2/2007" | Date == "2/2/2007")
base$Date <- as.Date(base$Date, format="%d/%m/%Y")

DiaSemana <- paste(as.Date(base$Date), base$Time)
base$DiaSemana <- as.POSIXct(DiaSemana)

png("plot2.png", width = 480, height = 480)

plot(base$Global_active_power~base$DiaSemana, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

dev.off()