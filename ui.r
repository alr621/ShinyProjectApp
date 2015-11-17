library(shiny)
library(faraway)


dataset <- gala

shinyUI(
  pageWithSidebar(
    #Application title
    headerPanel("Species Prediction by Island"),
    
    sidebarPanel(
      selectInput('Species', 'Name of Island', choices=row.names(dataset),selected=row.names(dataset)[1]),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('Total Species of Tortoises on this Island'),
      verbatimTextOutput("inputValue"),
      h4('Endemic Species of Tortoises on this Island '),
      verbatimTextOutput("prediction")
    )
  )
)
