#
# 
library(shiny); library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  options(scipen = 999)
  
  
  
 
 WBGDP <- read.csv("WB_GDP.csv", header = TRUE)
   output$plot1 <- renderPlot({
  
     a <- c("#E5F5F9")
     b <- c("#E5F5F9")
     c <- c("#E5F5F9")
    
     
     if (input$argentina) { 
       a <- c("#75AADB")
     }   
     
     if (input$brazil) { 
       b <- c("#007600")
     } 
     
     if (input$chile) { 
       c <- c("#D52B1E")
     } 
     
     
     Plt <- c(a, b, c)     
 p <-   ggplot(WBGDP, aes(China, GDP, colour = Country, shape = Country, size = 4)) 
 p <- p + labs(title = "Selected Correlations", x = "China GDP in $ Millions", y = "Comparison GDP in $ Milliions")
 p <- p + geom_point() + scale_color_manual(values = Plt)
 p <- p + theme(panel.background = element_rect(fill = "#E5F5F9"))
 
  print(p)
    
  })
  
})
