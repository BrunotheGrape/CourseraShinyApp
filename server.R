#
# 
library(shiny); library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
   
 GDP <- read.csv("WB_GDP.csv", header = TRUE)
   output$plot1 <- renderPlot({
    
 p <-   ggplot(GDP, aes(China, Brazil)) + xlab("China GDP")
 print(p)
    
  })
  
})
