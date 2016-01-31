shinyServer(function(input, output) {
    Sys.setlocale("LC_TIME", "English")
    output$res <- renderText({
      if (input$goButton == 0)
        return()
      if (Sys.Date() - input$date >= 0) 
        paste("You were born on a ",weekdays(input$date),"!",sep="")
      else
        paste("Don't lie buddy,",sep = "")
    })
    
    output$res2 <- renderText({
      if (input$goButton == 0)
        return()
      if (Sys.Date() - input$date >= 0) 
              paste("You lived ",Sys.Date() - input$date," days!",sep = "")
      else
              paste("Don't lie!",sep = "")
           })

    
    output$res3 <- renderText({
      if (input$goButton == 0)
        return()
        paste("As you were born on a ",weekdays(input$date)," here is a song about it:",sep="")
    })
    
    output$res4 <- renderText({
      if (input$goButton == 0)
        return()
      if (weekdays(input$date)=="Tuesday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/Cfopj9X_Cgw' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Friday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/kfVsfOSbJY0' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Saturday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/JceF-52woQs' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Sunday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/S2Cti12XBw4' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Monday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/SsmVgoXDq2w' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Wednesday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/1K0eknfuix8' frameborder='0' allowfullscreen></iframe>")
      else
      if (weekdays(input$date)=="Thursday") 
      paste("<iframe width='600' height='300' src='//www.youtube.com/embed/8S227FFNwl8' frameborder='0' allowfullscreen></iframe>")
      
           })
    
}
)