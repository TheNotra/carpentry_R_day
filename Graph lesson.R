#author Sharon Solis
#open ggplot2 library, we installed it this morning

library('ggplot2')

#initiate new variable to read gapminder file
gapminder <-read.csv("../data-shell/gapminder_data.csv", header=TRUE)

gapminder[1,1]
ggplot(data = gapminder, aes(x=gdpPercap,y=lifeExp))+
geom_point()  
ggplot(data = gapminder, aes(x=year,y=lifeExp))+
  geom_point()
ggplot(data = gapminder, aes(x=year,y=lifeExp,color=continent))+
geom_point()
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent))+
  geom_line()
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent))+
geom_line()+
geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,))+
  geom_line(aes(color=continent))+
  geom_point()
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,))+
  geom_line(color="turquoise")+
  geom_point()
  
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,))+
  geom_point()+
  geom_line(color="turquoise")
 
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+
  geom_point()
#function alpha =transparency; alpha =0.5 makes point transarent 50%
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+
  geom_point(alpha=0.5)+
  scale_x_log10()


ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp))+
  geom_point()+
  scale_x_log10()+
  geom_smooth(method="lm")


ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp))+
  geom_point()+
  scale_x_log10()+
  geom_smooth(method="lm", size=2, col="red")

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp))+
  geom_point(shape=10,size=0.5, color="green")+
  scale_x_log10()+
  geom_smooth(method="lm", size=2, col="red")


ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+
  geom_point(shape=10,size=0.5)+
  scale_x_log10()+
  geom_smooth(method="lm",size=2,col="black")
