library(shiny)

data(islands)
landmassDF <- as.data.frame(islands)

humanSF <- 2
houseSF <- 2000
fbStadiumSF <- 10^6
unitDF <- as.data.frame(c("Human" = humanSF, "House" = houseSF, "Stadium" = fbStadiumSF))

shinyServer(
        function(input, output) {
                output$olandmass <- renderPrint({input$landmass})
                output$ounit <- renderPrint({input$unit})
                output$oresult <- renderPrint({(landmassDF[input$landmass,] * 1000 * (5280^2)) / unitDF[input$unit,]})
        }
)