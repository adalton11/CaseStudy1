# Read in the CSV data from the World Bank regarding Education Data
EdData <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", header=TRUE)
# Remove unnecessary columns of data
EdData <- EdData[-c(4:31)]