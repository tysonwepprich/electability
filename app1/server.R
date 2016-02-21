library(shiny)

shinyServer(function(input, output) {
  
  # using action and reset buttons to plot graph
  v <- reactiveValues(data = NULL)
  
  observeEvent(input$action, {
    
    valRep <- c(input$valCarson, input$valCruz, input$valKasich, input$valRubio, input$valTrump)
    valDem <- c(input$valClinton, input$valSanders)
    pwinClinton <- c(input$pwinClintonvsCarson,
                     input$pwinClintonvsCruz,
                     input$pwinClintonvsKasich,
                     input$pwinClintonvsRubio,
                     input$pwinClintonvsTrump)
    pwinSanders <- c(input$pwinSandersvsCarson,
                     input$pwinSandersvsCruz,
                     input$pwinSandersvsKasich,
                     input$pwinSandersvsRubio,
                     input$pwinSandersvsTrump)
    
    pwinCarson <- 1 - c(input$pwinClintonvsCarson, input$pwinSandersvsCarson)
    pwinCruz <- 1 - c(input$pwinClintonvsCruz, input$pwinSandersvsCruz)
    pwinKasich <- 1 - c(input$pwinClintonvsKasich, input$pwinSandersvsKasich)
    pwinRubio <- 1 - c(input$pwinClintonvsRubio, input$pwinSandersvsRubio)
    pwinTrump <- 1 - c(input$pwinClintonvsTrump, input$pwinSandersvsTrump)
    
    utilClinton <- sum(input$valClinton * pwinClinton, (1 - pwinClinton) * valRep) / length(pwinClinton)
    utilSanders <- sum(input$valSanders * pwinSanders, (1 - pwinSanders) * valRep) / length(pwinSanders)
    utilCarson <- sum(input$valCarson * pwinCarson, (1 - pwinCarson) * valDem) / length(pwinCarson)
    utilCruz <- sum(input$valCruz * pwinCruz, (1 - pwinCruz) * valDem) / length(pwinCruz)
    utilKasich <- sum(input$valKasich * pwinKasich, (1 - pwinKasich) * valDem) / length(pwinKasich)
    utilRubio <- sum(input$valRubio * pwinRubio, (1 - pwinRubio) * valDem) / length(pwinRubio)
    utilTrump <- sum(input$valTrump * pwinTrump, (1 - pwinTrump) * valDem) / length(pwinTrump)
    dat <- c(utilClinton, utilSanders, utilCarson, utilCruz, utilKasich, utilRubio, utilTrump)
    names(dat) <- c("Clinton", "Sanders", "Carson", "Cruz", "Kasich", "Rubio", "Trump")
    v$data <- sort(dat, decreasing = TRUE)
  })
  
  observeEvent(input$reset, {
    v$data <- NULL
  })  
  
  output$plot <- renderPlot({
    if (is.null(v$data)) return()
    
    # Render a barplot
    barplot(height = v$data, 
            horiz = TRUE,
            main="Expected utility",
            las = 2
            )
  })
  
})

