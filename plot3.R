# Plot 3
# open device
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot3.png', width = 480, height = 480, units='px')
# plot
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red')
lines(data$DateTime, data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
# close device
dev.off()