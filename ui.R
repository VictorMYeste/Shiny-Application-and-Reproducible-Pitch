#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Major municipalities from Spain"),
    
    em("Choose the characteristics of the city you want to live"),
    p("Do you want to live in Spain? Choose the population and the area
                of the city where you would like to live... and we'll help you!"),
    
    hr(),

    # Sidebar
    sidebarLayout(
        sidebarPanel(
            sliderInput("pops",
                        "Population:",
                        min = 500000,
                        max = 3500000,
                        value = 500000,
                        step = 10000,
                        round = TRUE),
            sliderInput("area",
                        "Area (km^2):",
                        min = 100,
                        max = 1000,
                        value = 100,
                        step = 10,
                        round = TRUE)
        ),

        # Plot
        mainPanel(
            tabsetPanel(type = "tabs",
                tabPanel(
                    "Plot",
                    plotlyOutput("distPlot"),
                    br(),
                    h3("Possible choices"),
                    textOutput("finalcities")
                ),
                tabPanel(
                    "Documentation",
                    h2("Course Project: Shiny Application and Reproducible Pitch"),
                    p("This is a shiny application for the course project of
                      Developing Data Products."),
                    p("You have to select a population and area for the city
                      where you would like to live in Spain."),
                    p("You can only choose between the ones with at least half a
                        million people. Enjoy!")
                        
                )
            )
        )
    )
))
