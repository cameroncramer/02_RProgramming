# What are the data frame column names?
data <- read.csv("hw1_data.csv")
names(data)
# Extract the first 2 rows of the data frame?
data[1:2,]
# How many rows in the data frame
nrow(data)
# Extract last two rows or the data frame
data[152:153,]
# What is the value of Ozone if row 47
data[[47,1]]
# How many missing values for Ozone
sum(is.na(data$Ozone))
# What is the Ozone mean with NAs removed
Ozone <- data[,1]
bad <- is.na(Ozone)
goodOzone <- Ozone[!bad]
mean(goodOzone)
# Extract subset where Ozone is greater than 31 & Temp is greater than 90. 
# What is mean of Solar.R in subset.
ozoneTemp <- subset(data, Ozone > 31 & Temp > 90)
mean(ozoneTemp$Solar.R)
#What is the mean of "Temp" when "Month" is equal to 6?
month6 <- subset(data, Month == 6)
mean(month6$Temp)
#What was the maximum ozone value in the month of May (i.e. Month = 5)?
mayOzone <- subset(data, Month == 5, select = c(Ozone))
summary(mayOzone)