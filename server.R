#
# 
library(shiny); library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  options(scipen = 999)
 WBGDP <- read.csv("WB_GDP.csv", header = TRUE)
   output$plot1 <- renderPlot({
    
 p <-   ggplot(WBGDP, aes(China, GDP, fill = Country)) 
 p <- p + labs(title = "Selected Correlations", x = "China GDP in $ Millions", y = "Comparison GDP in $ Milliions")
 
 p <- p + geom_point()

 
 print(p)
    
  })
  
})
