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