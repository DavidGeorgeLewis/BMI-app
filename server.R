diabetesRisk <- function(height,weight)  round(weight/height^2,1)
shinyServer(
        function(input, output) {
                output$inputheight <- renderPrint({input$height})
                output$inputweight <- renderPrint({input$weight})
                output$prediction <- renderPrint({diabetesRisk(input$height,input$weight)})
        }
)               
