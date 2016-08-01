#


library(shiny)
options(digits = 12)
# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  headerPanel( "GDP Correlations"),
  sidebarPanel( "Select GDP/China Correlation",
    checkboxInput("argentina", label = "Argentina", value = TRUE),
    checkboxInput("brazil", label = "Brazil", value = TRUE),
    checkboxInput("chile", label = "Chile", value = TRUE)
  ),
  mainPanel(plotOutput('plot1'))
))