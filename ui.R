library(shiny)
library(ggplot2)
library(maps)


shinyUI(fluidPage(
    titlePanel("Atlas of Rural and Small-Town America 2013 - Income/Poverty"),
    
    sidebarLayout(
        sidebarPanel(
            p("This app creates a choropleth map showing a variety of",
              "economic indicators from 2013 across the 48 contiguous",
              "states, by county. The data comes from the US Department",
              "of Agriculture and is available for download", 
                a("here.", target = "_blank", 
                  href = "http://www.ers.usda.gov/data-products/atlas-of-rural-and-small-town-america/download-the-data.aspx")),
            helpText("Choose an economic indicator to display from",
                     "the dropdown menu below."),
            uiOutput('menu'),
            helpText("Choose a range of values you are interested in seeing.",
                     "This range will be divided into five intervals of equal",
                     "length, and the counties will be colored accordingly."),
            uiOutput('slider'),
            helpText("Once you are ready, click \"GO!\" to create the map.",
                     "This may take a minute."),
            actionButton("go", "Go!")
        ),
        
        mainPanel(
            plotOutput("map")
        )
    )
))