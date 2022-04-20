# Importando la librería
library(ggplot2)
library(gridExtra)

# Definiendo variables
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10) # nolint
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018') # nolint

myplot <- plot( # nolint
    x = year, # nolint
    y = disney, # nolint
    main = 'Basic Graphic', # nolint
    panel.first = grid() # nolint
) # nolint


# Crear gráfico por DataFrame y ggplot
movies <- data.frame(
    year,
    disney
)

ggplot(
    data = movies,
    mapping = aes(
        x = year,
        y = disney
    )
) + geom_point(size=3, alpha=0.5) + labs(title = 'Disney') # nolint


# Crear un gráfico de barras 01
plot1 <- ggplot(mtcars, aes(x=cyl)) + geom_bar() + labs(title="Graphic bar of frecuency")  # nolint

print(plot1)


# Crear un gráfico de barras 02
df <- data.frame(var=c("a", "b", "c"), nums=c(1:3)) # nolint

plot2 <- ggplot(df, aes(x=var, y=nums)) + geom_bar(stat = "identity") # nolint

print(plot2)


grid.arrange(plot1, plot2, ncol=2) # nolint


# Crear un gráfico de barras 03
df <- data.frame(var=c("a", "b", "c"), nums=c(1:3)) # nolint

ggplot(df, aes(x=var, y=nums)) + geom_bar(stat = "identity") + coord_flip() + labs(title="Coordinates are flipped") # nolint


# Crear gráfico con colores
ggplot(mtcars, aes(x=cyl)) + geom_bar(fill='darkgoldenrod2') + # nolint
    theme(panel.background = element_rect(fill = 'steelblue'), # nolint
    panel.grid.major = element_line(colour = "firebrick", size=3), # nolint
    panel.grid.minor = element_line(colour = "blue", size=1)) # nolint


ggplot(mtcars, aes(x=cyl)) + geom_bar(fill="firebrick") + theme(plot.background=element_rect(fill="steelblue"), plot.margin = unit(c(2, 4, 1, 3), "cm")) # nolint


# Ejemplos obtenidos de Datacamp
# dataframe_str <- data.frame(str(mtcars)) # nolint

# ggplot(mtcars, aes(cyl, mpg)) + geom_point() # nolint


# Algunos ejemplos complejos
# ggplot(mtcars, aes(wt, mpg, color = disp)) + geom_point() # nolint


# ggplot(mtcars, aes(wt, mpg, color = disp, size = disp)) + geom_point() # nolint


# ggplot(diamonds, aes(carat, price)) + geom_point() + geom_smooth() # nolint


# ggplot(diamonds, aes(carat, price, color = clarity)) + geom_point(alpha=0.4) + geom_smooth() # nolint