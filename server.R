library(shiny)
library(ggplot2)
# DATASET
dados <- read.csv("pcvalue.csv", sep=",", header=T)
colnames(dados)[3] <- "PCDELL"; colnames(dados)[4] <- "PCHP"; colnames(dados)[5] <- "iMAC"

## SERVER
shinyServer(function(input, output) {
        dadosInput <- reactive({
                subset(dados, select=c(input$pc), subset=(substring(dados$Date,1,4) == input$year))
        })
        ## PLOT
        output$plot1 <- renderPlot({
                ## RENDER
                barplot(dadosInput()[,input$pc],
                        main=paste(input$pc, "in", input$year),
                        ylab="Values USD",xlim=c(0,6), ylim=c(0,1000),
                        xlab="Quarter PC Values")
        })
        # DATASET SUMMARY
        output$Summary <- renderPrint({
                dataset <- dadosInput()
                summary(dataset)
        })
        
        # SHOW 4 QUARTER OBSERVATIONS
        output$view <- renderTable({
                head(dadosInput(), n = 4)
        })
})


