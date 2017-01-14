# plot 2
# convert date and time variables
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
# open device
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot2.png', width = 480, height = 480, units='px')
# plot
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()