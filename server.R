library(shiny)
library(ggplot2)

library(UsingR)
data(mtcars)

calculateMinDisp <- function (cylinput) 
{
        newdatatemp <- subset(mtcars, cyl == cylinput)
        minDisp=min(newdatatemp$disp)
        return(round(minDisp))
}

calculateMaxDisp <- function (cylinput) 
{
        newdatatemp <- subset(mtcars, cyl == cylinput)
        maxDisp=max(newdatatemp$disp)
        return(round(maxDisp))
}

calculateMeanDisp <- function (cylinput) 
{
        newdatatemp <- subset(mtcars, cyl == cylinput)
        meanDisp=mean(newdatatemp$disp)
        return(round(meanDisp))
}
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$cylinput})
                output$minDisp <- renderPrint({calculateMinDisp(input$cylinput)})
                output$maxDisp <- renderPrint({calculateMaxDisp(input$cylinput)})
                output$meanDisp <- renderPrint({calculateMeanDisp(input$cylinput)})
        }

)