#Learning aplyer
#day 2 afternoon 3.22.2019
#install and load packages
install.packages('dplyr')
library(dplyr)

#add data
gapmaster<-read.csv("../data-shell/gapminder_data.csv", header=TRUE)

head(gapminder)


#practice the functions from the library

#function select ->choosing specific columns
gap_yr_gdp<-gapminder%>%select(year,gdpPercap)
head(gap_yr_gdp)


#function "filter"
#choose specific rows

gap_1960<-gapminder%>%filter(year>=1960&year<1970)
head(gap_1960)
nrow(gap_1960)

#using multiple functions together

gap_yr_gdp_1960<-gapminder%>%select(year,gdpPercap)%>%filter(year>=1960&year<1970)
head(gap_yr_gdp_1960)

#challenge 1 :Write a single command (which can span multiple lines and includes pipes) that will produce a dataframe that has the African values for lifeExp, country and year, but not for other Continents. How many rows does your dataframe have and why?
gap_africa_only<-gapminder%>%filter(continent =="Africa")%>%select(lifeExp,country,year)
head(gap_africa_only)
tail(gap_africa_only)
nrow(gap_africa_only)
str(gap_africa_only)
#summarizing data
gdp_by_continent<-gapminder%>%
  group_by(continent,year)%>%
  summarise(mean_gdp=mean(gdpPercap), sd_gdp=sd (gdpPercap))
gdp_by_continent
#mutate function
#add new columns that are functions of the other column

gdp_pop<-gapminder%>%mutate(gdp_billions=(gdpPercap*pop)/10^9)
head(gdp_pop)
#string with ggplot
library(ggplot2)

gapminder%>%mutate(gdp_billions=(gdpPercap*pop)/10^9)%>%
  group_by(continent,year)%>%
  summarise(mean_gdp_bill=mean(gdp_billions))%>%
  ggplot(aes(x=year,y=mean_gdp_bill,color=continent))+geom_point()
  