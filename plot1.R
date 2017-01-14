# plot 1
# open device
if(!file.exists('plots')) dir.create('plots')
png(filename = './plots/plot1.png', width = 480, height = 480, units='px')
# plot
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()