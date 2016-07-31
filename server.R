#
# 
library(shiny); library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  options(scipen = 999)
 GDP <- read.csv("WB_GDP.csv", header = TRUE)
   output$plot1 <- renderPlot({
    
 p <-   ggplot(GDP, aes(China, GDP)) 
 p <- p + xlab("China GDP in $ Millions") +ylab("Comparison GDP in $ Milliions")
 print(p)
    
  })
  
})
