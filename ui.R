   shinyUI(fluidPage(
    titlePanel("Day of birth & days lived calculator"),
    
    sidebarLayout(
      sidebarPanel(
        h6("This app calculates how many days you have lived and shows you which day of the week you were born on. And a little bit more..."),
        dateInput("date", 
                  label = h4("When were you born?"), 
                  value = "1990-01-01"),
        actionButton("goButton", "Give me info!")
      ),
      
      mainPanel(
        h3("Results"),
        textOutput("res"),
        textOutput("res2"),
        textOutput("res3"),
        htmlOutput("res4")
    )
    )
    
  ))
