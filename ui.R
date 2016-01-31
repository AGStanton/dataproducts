library(shiny)
data(islands)
df <- as.data.frame(islands)

shinyUI(pageWithSidebar(
        headerPanel("Developing an Intuition of the Scale of Earth's Landmasses"),
        sidebarPanel(
                selectInput("landmass", "Choose a Landmass:", choices = c(row.names(df))),
                selectInput("unit", "Choose a Unit of Comparison:", choices = c("Human", "House", "Stadium")),
                submitButton('Submit')
        ),
        mainPanel(
                h3("Let's see how big these landmasses really are!"),
                h4("If you were to use the unit of a..."),
                verbatimTextOutput("ounit"),
                h4("...to fill up the entire landmass of..."),
                verbatimTextOutput("olandmass"),
                h4("...then you could fit..."),
                verbatimTextOutput("oresult"),
                h4("...of those units in that landmass."),
                h4("Now reflect: is this more or less than you expected? Why?")
        )
))