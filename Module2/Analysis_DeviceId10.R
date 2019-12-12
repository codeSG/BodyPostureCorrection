rm(list=ls())

#install.packages('DataExplorer') 
library(DataExplorer)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(lubridate)

options(header=TRUE,stringsAsFactors=FALSE,fileEncoding="ANSI")
setwd("C:\\Users\\amgupta\\OneDrive - Microsoft\\PostureCorrection\\DataAnalysis\\")

PostureData <- read.csv("Data_DeviceId10.csv",header=T, stringsAsFactors = FALSE)
#names(PostureData)[names(PostureData) == "ï..DeviceId"] <- "DeviceId"
colnames(PostureData)
str(PostureData)

PostureData$Time <- mdy_hms(PostureData$Time, tz="UTC")
str(PostureData)

#PostureData$Time <- as.Date(PostureData$Time, "%m/%d/%y %H:%M:%S")
#str(PostureData)

#Subsetting the Data
#PostureData <- subset(PostureData, DeviceId=='test1')

plot(PostureData$x)
lines(PostureData$x)
range(PostureData$x)

plot_colors <- c(rgb(r=0.0,g=0.0,b=0.9), "red", "forestgreen")
plot(PostureData$x, type = 'l', col=plot_colors[1],
     ylim=range(PostureData$x), 
     x = PostureData$Time,
     xlab="Date/Time",ylab="X-Axis",
     cex.lab=0.8, lwd=2)

ggplot(data = PostureData, aes(x = Time, y = x)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Posture Data",
       subtitle = "Device 10",
       x = "Date", y = "X-Value (Angle)")


#Subsetting the Data
print(month(PostureData[1,2]))
print(year(PostureData[1,2]))
print(day(PostureData[1,2]))
print(date(PostureData[1,2]))
print(hour(PostureData[1,2]))
print(minute(PostureData[1,2]))
print(second(PostureData[1,2]))
print(second(PostureData[2,2]))

PostureData$Date   <- date(PostureData$Time)
PostureData$Hour <- hour(PostureData$Time)
PostureData$Minute <- minute(PostureData$Time)
PostureData$Second <- second(PostureData$Time)

PostureData <- subset(PostureData, Date == "2019-12-05")

ggplot(data = PostureData, aes(x = Time, y = x)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Posture Data",
       subtitle = "Device 10",
       x = "Date", y = "X-Value (Angle)")

#Subsetting the Data
PostureData <- subset(PostureData, Date == "2019-12-05" & Hour==11)

ggplot(data = PostureData, aes(x = Time, y = x)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Posture Data",
       subtitle = "Device 10",
       x = "Date", y = "X-Value (Angle)")


#################################################################################################################

library(tidyr)
library(dplyr)
df <- PostureData %>%
  select(Time, x, y, z) %>%
  gather(key = "variable", value = "value", -Time)
head(df, 3)

ggplot(df, aes(x = Time, y = value)) + 
  geom_line(aes(color = variable), size = 1) +
  scale_color_manual(values = c("#00AFBB", "#E7B800", "#A7C800")) +
  theme_minimal()
