#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    cities <- data.frame(name = c("Madrid", "Barcelona", "Valencia",
              "Sevilla", "Zaragoza", "Málaga"),
        pop = c(3334730, 1664182, 800215, 691395, 681877, 578460),
        area = c(604.45, 101.35, 134.65, 140.8, 973.78, 398.25),
        col = c("> 1 million pop", "> 1 million pop",
             "> 750 thousand pop", "> 500 thousand pop",
             "> 500 thousand pop", "> 500 thousand pop"))

    output$distPlot <- renderPlotly({
        
        cities <- cities[cities$pop > input$pops & cities$area > input$area,]
        
        plot_ly(cities, x = cities$pop, y = cities$area,
                mode = "markers", color = as.factor(cities$col)) %>%
            layout(title = "Cities by Area and Population",
                xaxis = list(title = 'Population', zeroline = TRUE, range = c(0, 3500000)),
                yaxis = list(title = 'Area (km^2)', range = c(0,1000)))
        
    })
    
    getFinalCities <- reactive({
        cities <- cities[cities$pop > input$pops & cities$area > input$area,]
        paste(unlist(cities$name), collapse=", ")
    })
    
    output$finalcities <- renderText(
        getFinalCities()
    )

})
