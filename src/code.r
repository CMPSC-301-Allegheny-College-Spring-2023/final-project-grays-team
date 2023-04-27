# Data Analytics (CS301) 

################################################

# Names: 
print("The names of this group are the following.")
print("Tugi Gantulga")
print("Brenden Gray")
print("Nic Ingerson")

################################################

print("The name of this group is the following.")
print("Compsci-goblins")

rm(list = ls()) # clear out the variables
# from memory to make a clean execution of the code.

# If you want to remove all previous plots
# and clear the console, run the following two lines.
graphics.off() # clear out all plots from previous work.

cat("\014") # clear the console

################################################

# Instructions: Complete this code using
# RStudio by following the steps in README.md.
# Note: your code must be able to
# execute without errors. Please be sure
# that comments are commended, and code
# is coded correctly without typographical errors.

library(dplyr)
library(dslabs)
library(tidyverse)
library(ggplot2)

##### Begin by loading your csv file.

data <- read.table(file.choose(), header = TRUE, sep = ",")

##### Begin by loading your csv file.

# View the data set.

View(data)

# Add your code here to address the four main research questions which are noted in the README.md file. 

model <- lm( Ladder.score ~ Standard.error.of.ladder.score + Logged.GDP.per.capita + Social.support + Healthy.life.expectancy + Freedom.to.make.life.choices + Generosity + Perceptions.of.corruption, data=data)
summary(model)


# Seeing the relationship between GDP per capita and the happiness index score WITHOUT country names
ggplot() +
  geom_point(data = data, aes(x = Logged.GDP.per.capita, y = Ladder.score), color = "blue") +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (all countries)")


# Seeing the relationship between GDP per capita and the happiness index score WITH country names


ggplot(data, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "blue") +
  geom_text(aes(label = Country.name), size = 3, hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (all countries)")

# choose five countries that are developed, choose 5 that are average and choose 5 that are poor and plot them
# choose five countries that are developed, choose 5 that are average and choose 5 that are poor and plot them

# Finland Luxembourg and other countries

some_countries <- data[c(1,5,9,15,30,36,47,64,83,100,110,126,132,137),]

ggplot(some_countries, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "red") +
  geom_text(aes(label = Country.name), hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (few countries)")

# All countries (with labels)

ggplot(data, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "blue") +
  geom_text(aes(label = Country.name), hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (all countries)")

# All countries (without labels)

ggplot(data, aes(x = Logged.GDP.per.capita, y = Ladder.score)) +
  geom_point(color = "blue") +
  xlab("Logged GDP per capita") +
  ylab("Happiness index") +
  ggtitle("Correlation between GDP per capita and the happiness index score (all countries)")

# GDP and Healthy Life Expectancy

# Few Countries

gdp_life_expectancy_countries_few <- data[c(1,5,9,15,30,36,47,64,83,100,110,126,132,137),]

ggplot(gdp_life_expectancy_countries_few, aes(x = Logged.GDP.per.capita, y = Healthy.life.expectancy)) +
  geom_point(color = "red") +
  geom_text(aes(label = Country.name), hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Healthy lide expectancy") +
  ggtitle("Correlation between GDP per capita and healthy life expectancy (few countries)")

# All Countries (with labels)

ggplot(data, aes(x = Logged.GDP.per.capita, y = Healthy.life.expectancy)) +
  geom_point(color = "blue") +
  geom_text(aes(label = Country.name), hjust = 0, vjust = 0) +
  xlab("Logged GDP per capita") +
  ylab("Healthy lide expectancy") +
  ggtitle("Correlation between GDP per capita and healthy life expectancy (all countries)")

# All Countries (without labels)

ggplot(data, aes(x = Logged.GDP.per.capita, y = Healthy.life.expectancy)) +
  geom_point(color = "blue") +
  xlab("Logged GDP per capita") +
  ylab("Healthy lide expectancy") +
  ggtitle("Correlation between GDP per capita and healthy life expectancy (all countries)")

# TODO we can create more plots using the same graph or different and use other variables