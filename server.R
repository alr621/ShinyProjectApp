library(shiny)
library(faraway)


function(input, output) {
  
  dataset <- reactive({
    gala[input$Species,]
  })
  output$inputValue <- renderPrint({dataset()$Species})
  output$prediction <- renderPrint({dataset()$Endemics})
}
  
  