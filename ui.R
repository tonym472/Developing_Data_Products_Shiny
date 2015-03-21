library(shiny)
library(ggplot2)

shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Car Displacement"),
                sidebarPanel(
                        sliderInput("cylinput", 
                                    "Number of Cylinders: 
                                     Select 4, 6 or 8", 
                                    min = 4,
                                    max = 8, 
                                    value = 4,
                                    step = 2)
                ),
                mainPanel(
                        h3('Instructions'),
                        helpText("This application will return the Minimum, Maximum & Mean Displacement when the number of cylinders is selected."),
                        code("Number of Cylinders"),
                        helpText("Enter the number of cylinders for the car."),
                        h3('Results of calculation'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Min Displacement:'),
                        verbatimTextOutput("minDisp"),
                        h4('Max Displacement:'),
                        verbatimTextOutput("maxDisp"),
                        h4('Mean Displacement:'),
                        verbatimTextOutput("meanDisp")
                        
                        
                )
        )
)