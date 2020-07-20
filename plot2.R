## Reading Data ##
household_power_consumption <- read_delim("C:/Users/dell/Desktop/household_power_consumption.txt", 
                                          +     ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"), 
                                                                                             +         Time = col_time(format = "%H:%M:%S")), 
                                          +     trim_ws = TRUE)

library(dplyr)
## Subsetting accoding to dates ##

power= subset(household_power_consumption, Date >= "2007-02-01")
power= subset(power, Date <= "2007-02-02")


## plot 2 ## 

plot(power$Global_active_power, type="l",xlab="", ylab="Global Active Power(kilowatts)")
