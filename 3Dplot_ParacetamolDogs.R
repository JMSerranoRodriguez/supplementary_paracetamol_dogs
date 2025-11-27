
# 3D surface plots - Paracetamol in dogs (for Ludovic Pelligand) #

## 4 plots to be created, 1 for each dog breed (Beagles and others, Greyhounds, Labradors) and 1 for human as comparison. Data to use is the mean data locatd in the "mean" tab of Excel. For each plot a HTML widget to be prepared for repository ##

# Dataset PTA imported from Excel, no headings  - labelled according to breed #



# ___ Plotting the graphs ___ #

# install.packages("plotly")
library(plotly)
library(ggplot2)
library(htmlwidgets)


# Convert dataset to matrix #
Beagles <- as.matrix(Beagles)
GreyHounds <- as.matrix(GreyHounds)
Labradors <- as.matrix(Labradors)
Humans <- as.matrix(Humans)

# List values for x-axis (Target (mg/L)) #
Target <- c(0.1, 0.5, 1, 5, 10, 15, 20) 

# List values for y-axis #
Doses <- c(1, 5, 10, 15, 20, 30)


# Make a 3D surface plot/s #
Fig_Beagle <- plot_ly(
  x = ~Target,  # Assign x-axis values,
  y = ~Doses,  # Assign y-axis values,
  z = ~Beagles  # Matrix data for z-axis
) %>% add_surface(
  colorscale = list(
    c(0, "#2166AC"),
    c(0.5, "#FFFFFF"),
    c(1, "#B2182B")
  ),
  opacity = 0.7     # <-- semi-transparent
) %>%
  layout(
    title = "Beagles",
    scene = list(
      xaxis = list(title = "Target (mg/L)", 
                  type = "log",
                  tickvals = Target,        # your actual numeric values
                  ticktext = Target         # display full values
      ),
      yaxis = list(title = "Dose (mg/kg)", 
                   type = "log",
                   tickvals = Doses,        # your actual numeric values
                   ticktext = Doses         # display full values
      ),
      zaxis = list(title = "Time median concentration above target (%)")
    )
  )

Fig_GreyHounds <- plot_ly(
  x = ~Target,  # Assign x-axis values,
  y = ~Doses,  # Assign y-axis values,
  z = ~GreyHounds  # Matrix data for z-axis
) %>% add_surface(
  colorscale = list(
    c(0, "#2166AC"),
    c(0.5, "#FFFFFF"),
    c(1, "#B2182B")
  ),
  opacity = 0.7     # <-- semi-transparent
) %>%
  layout(
    title = "Greyhounds",
    scene = list(
      xaxis = list(title = "Target (mg/L)", 
                   type = "log",
                   tickvals = Target,        # your actual numeric values
                   ticktext = Target         # display full values
      ),
      yaxis = list(title = "Dose (mg/kg)", 
                   type = "log",
                   tickvals = Doses,        # your actual numeric values
                   ticktext = Doses         # display full values
      ),
      zaxis = list(title = "Time median concentration above target (%)")
    )
  )

Fig_Humans <- plot_ly(
  x = ~Target,  # Assign x-axis values,
  y = ~Doses,  # Assign y-axis values,
  z = ~Humans  # Matrix data for z-axis
) %>% add_surface(
  colorscale = list(
    c(0, "#2166AC"),
    c(0.5, "#FFFFFF"),
    c(1, "#B2182B")
  ),
  opacity = 0.7     # <-- semi-transparent
) %>%
  layout(
    title = "Human",
    scene = list(
      xaxis = list(title = "Target (mg/L)", 
                   type = "log",
                   tickvals = Target,        # your actual numeric values
                   ticktext = Target         # display full values
      ),
      yaxis = list(title = "Dose (mg/kg)", 
                   type = "log",
                   tickvals = Doses,        # your actual numeric values
                   ticktext = Doses         # display full values
      ),
      zaxis = list(title = "Time median concentration above target (%)")
    )
  )

Fig_Labrador <- plot_ly(
  x = ~Target,  # Assign x-axis values,
  y = ~Doses,  # Assign y-axis values,
  z = ~Labradors  # Matrix data for z-axis
) %>% add_surface(
  colorscale = list(
    c(0, "#2166AC"),
    c(0.5, "#FFFFFF"),
    c(1, "#B2182B")
  ),
  opacity = 0.7     # <-- semi-transparent
) %>%
  layout(
    title = "Labrador",
    scene = list(
      xaxis = list(title = "Target (mg/L)", 
                   type = "log",
                   tickvals = Target,        # your actual numeric values
                   ticktext = Target         # display full values
      ),
      yaxis = list(title = "Dose (mg/kg)", 
                   type = "log",
                   tickvals = Doses,        # your actual numeric values
                   ticktext = Doses         # display full values
      ),
      zaxis = list(title = "Time median concentration above target (%)")
    )
  )

# NOTE: Write the correct path where your file is located. In this example, a Windows directory is shown, but select the one that is most appropriate for your computer.#
# Create HTML widget for interactive plot # 
htmlwidgets::saveWidget(Fig_Beagle, "C:/Users/super/Downloads/3Dplot_ParacetamolDogs_PC/Fig_Beagle.html")

htmlwidgets::saveWidget(Fig_GreyHounds, "C:/Users/super/Downloads/3Dplot_ParacetamolDogs_PC/Fig_GreyHounds.html")

htmlwidgets::saveWidget(Fig_Humans, "C:/Users/super/Downloads/3Dplot_ParacetamolDogs_PC/Fig_Humans.html")

htmlwidgets::saveWidget(Fig_Labrador, "C:/Users/super/Downloads/3Dplot_ParacetamolDogs_PC/Fig_Labrador.html")
