#find number of customers belonging to each region
#creating the frequency distribution of a variable

y <- table(Customer$Region)

y
View(y) #opens data in table format

#Create a barplot on this data
barplot(y)
barplot(y[order(y)]) #orders bars in ascending order
barplot(y[order(-y)]) #orders bars in descending order
barplot(y[order(y)],horiz = TRUE) #displays barchart in horizontal view
barplot(y[order(y)],horiz = TRUE, col="red") #changes all bar colors to red
barplot(y[order(y)],horiz = TRUE, col=c("red","green","blue","beige")) #makes each bar a different color
colors() #shows list of available colors in console

barplot(y[order(y)],horiz = TRUE, col=c("red","green","blue","beige"), border = NA) #removes border on barchart


barplot(y[order(y)],horiz = TRUE, col=c("red","green","blue","beige"), main="Freq of Regions") #gives chart title of "Freq of Regions"


barplot(y[order(y)],horiz = TRUE, col=c("red","green","blue","beige"), xlab="Number of Customers") #labels x-axis


#command to get the barplot as an image
png(filename="C:/Program Files/R/Data/Freq.png", width = 888,height=577)
barplot(y[order(y)],horiz = TRUE, col=c("red","green","blue","beige"))
dev.off()