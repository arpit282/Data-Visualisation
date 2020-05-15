
############################################################################
####################    Data Visualisation   ########################

data <- read.csv("vehicle.csv")
install.packages("psych")
library(psych)

pairs.panels(data[2:6])

#### Scatter Plot  #####
library(ggplot2)

ggplot(data,aes(Mileage,fm,col=State))+geom_boxplot()


# histogram
hist(data$lh,xlim = c(0,25),breaks = 30,col = rainbow(12),main = "Histogram",
     xlab = "labour cost")


# barplot
barplot(data$Mileage)


#plot
plot(data$State)

# pie
pie(table(data$State))


# boxplot
boxplot(Mileage~State,data)

# Multi-plot
pairs(data[2:6])


# 3d Scatter Plot

library(scatterplot3d)
scatterplot3d(data$lh,data$lc,data$mc)

##### Correlation ########
mtcars

str(mtcars)
y <- cor(mtcars)
library(ggplot2)
library(ggcorrplot)

corr <- round(y,1)

ggcorrplot(corr,lab = T,lab_size = 3,colors = c("blue","springgreen2","tomato2"),method = "square",
           type= "lower")


###########    Interactive Diagram NetworkD3  ################

data <- read.csv("binary.csv")

library(networkD3)
simpleNetwork(data,fontSize = 16,nodeColour = "red")
