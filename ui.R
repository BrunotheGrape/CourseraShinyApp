#


library(shiny)
options(digits = 12)
# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel( "GDP correlations"),
  sidebarPanel(),
  mainPanel(plotOutput('plot1'))
))