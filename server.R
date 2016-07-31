#
# 
library(shiny); library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  options(scipen = 999)
  a <- c("#75AADB")
  b <- c("#007600")
  c <- c("#d52b1e")
  Plt <- c(a, b, c)
  
 WBGDP <- read.csv("WB_GDP.csv", header = TRUE)
   output$plot1 <- renderPlot({
    
 p <-   ggplot(WBGDP, aes(China, GDP, colour = Country, shape = Country)) 
 p <- p + labs(title = "Selected Correlations", x = "China GDP in $ Millions", y = "Comparison GDP in $ Milliions")
 p <- p + geom_point() + scale_color_manual(values = Plt)
 p <- p + theme(panel.background = element_rect(fill = "#E5F5F9"))
 
 print(p)
    
  })
  
})
