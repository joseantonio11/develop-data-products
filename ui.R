library(shiny)
library(ggplot2)
## UI
shinyUI(
        fluidPage(
                titlePanel("QUARTER COMPUTER PRICES PER YEAR/MANUFACTURER"),
                sidebarLayout(
                        sidebarPanel(
                                selectInput("pc", "CHOOSE THE KIND OF COMPUTER",
                                            choices=c("PCDELL", "PCHP", "iMAC")),
                                hr(),
                                selectInput("year", "CHOOSE THE SALES PER YEAR/QUARTER",
                                            choices=c("2010", "2011", "2012", "2013", "2014", "2015", "2016")),
                                hr(),
                                helpText("QUARTER PC VALUES FROM 2010 TO 2016.", 
                                         br(),
                                         "SELECT THE TYPE OF COMPUTER AND THE YEAR OF SALES.",
                                         br(),
                                         "CLICK UPDATE."),
                                hr(),
                                submitButton("UPDATE")),
                mainPanel(
                        plotOutput("plot1"),
                        h4("Summary"),
                        verbatimTextOutput("Summary"),
                        h4("Observations"),
                        tableOutput("view"))
                        )
                )
        )


