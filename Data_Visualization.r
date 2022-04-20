library(tidyverse)

# Crear un gráfico de barras
# - Dataset
# - Tipo de gráfico
# - Color de las columnas
# - Color de los bordes
# - Título en posición x
# - Título en posición y
qplot(
    mtcars$cyl,
    geom = "bar",
    fill = "blue",
    colour = "red",
    xlab = "Cilindros",
    ylab = "Numero de vehiculos"
)


# Crear un histograma
# - Dataset
# - Tipo de gráfico
# - Tamaño del contenedor
# - Color de los bordes
# - Color del fondo
# - Título principal
qplot(
    mtcars$hp,
    geom = "histogram",
    binwidth = 25,
    colour = ("black"),
    xlab = "Caballos de fuerza",
    ylab = "N. Carros",
    alpha = (0),
    main = "Histograma"
)


# Gráfico de torta/pastel
barp <- ggplot(
    mtcars,
    aes(
        x=1, # nolint
        y=sort(mtcars$carb), # nolint
        fill=sort(mtcars$carb) # nolint
    )
) + geom_bar(stat = "identity") # nolint

barp <- barp + coord_polar(theta='y') # nolint
barp <- barp + theme(
    axis.line=element_blank(), # nolint
    axis.text.x=element_blank(), # nolint
    axis.text.y=element_blank(), # nolint
    axis.ticks=element_blank(), # nolint
    axis.title.y=element_blank() # nolint
) # nolint


# Leer de un archivo csv
oscar_male <- "data/oscar_age_male.csv"


# Leer data de oscar ganados por género
oscar_male_df <- read.csv(file = oscar_male)

qplot(
    oscar_male_df$Year,
    geom = "histogram",
    binwidth = 15,
    xlab = "Year"
)

qplot(
    oscar_male_df$Age,
    geom = "histogram",
    binwidth = 15,
    xlab = "Age",
    main = "oscar - Hombres"
)

ggplot(
    oscar_male_df,
    aes(
        x = "",
        y = oscar_male_df$Name,
        fill = oscar_male_df$Year
    )
) + geom_bar(stat = "identity") + coord_polar(theta = "y") # nolint