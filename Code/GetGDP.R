# Read in the GDP rank data from the world bank
GDP <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv")
# Remove Empty Rows of Data
GDP <- GDP[5:195,]
# Remove Empty Columns
GDP <- GDP[-c(3,6:20)]
# Rename Column Headers
names(GDP)[1] <- "CountryCode"
names(GDP)[2] <- "Rank"
names(GDP)[3] <- "Economy"
names(GDP)[4] <- "Dollars"
# Remove rows without a country code
GDP<-GDP[!(GDP$CountryCode==""),]
# Replace the values of ".." with blanks
GDP$Dollars[GDP$Dollars == ".."] <- ""
# Convert GDP Dollars and Rank to a numeric value
GDP$Dollars <- as.numeric(gsub("[^[:digit:]]","", GDP$Dollars))
GDP$Rank <- as.numeric(gsub("[^[:digit:]]","", GDP$Rank))