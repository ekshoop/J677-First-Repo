Downloading csv to R

library(tidyverse)
getwd()
setwd("/Users/bethshoop/Desktop/J677/")
read_csv("dataset1.csv")

column names
setwd("/Users/bethshoop/Desktop/J677/")
read_csv("dataset2.csv")
read_csv("dataset2.csv", col_names = c("a","b","c"))


skip lines
read_csv("dataset3.csv", skip = 2)

people <- read_csv("people.csv", skip = 2,col_names = c("name", "age", "place"))

need to show stuff from above in next assignment
  
read_csv("scores.csv")
performance <- read_csv("scores.csv")
perf2 <- pivot_longer(performance,c("history", "math"),names_to = "subject", values_to = "scores")

perf2

pivot_wider(perf2, names_from = "subject", values_from = "scores")

table1
table2
table4a

install.packages("ggplot2")
library(ggplot2)

filter(table2, type=="cases") %>% ggplot(aes(year, count, color = country)) + geom_line() + geom_point()
pivot_wider(table2, names_from = "type", values_from = "count")

ggplot(table1, aes(year, cases, color=country)) + geom_point()+ geom_line()

table4a
pivot_longer(table4a, cols = c("1999", "2000"), names_to = "year", values_to = "cases")

table3
separate(table3, rate, c("cases", "population"), convert = TRUE)

stock <- read_csv("stocks.csv")
stock
stocks2 <- pivot_wider(stock, names_from="qtr", values_from = return)

pivot_longer(stocks2,c("1", "2", "3", "4"), names_to="qtr", values_to = "return")

library(gapminder)
gapminder
ggplot(gapminder, mapping = aes(x=gdpPercap, y=lifeExp)) + geom_point(alpha = 0.3) + geom_smooth(color = "red") + scale_y_log10()
ggplot(gapminder, mapping = aes(x=gdpPercap, y=lifeExp))+ geom_point()+scale_x_log10()+coord_flip

library(diamonds)
diamonds
ggplot(diamonds, mapping = aes(price)) + geom_histogram(binwidth = 2000, alpha = 0.8, fill = "orange", color = "black")

install.packages(mpg)
mpg
ggplot(mpg, aes(x=displ, y = hwy)) + geom_point(aes(color = class)) +geom_smooth(method="lm")

ggplot(gapminder, mapping = aes(x=gdpPercap, y=lifeExp))+ geom_point(aes(color = continent, alpha = 0.1))+scale_x_log10()+coord_flip()+geom_smooth(aes(color= continent))
