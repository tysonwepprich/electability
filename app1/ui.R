library(shiny)



shinyUI(fluidPage(
  h1("Should you vote with electability in mind?"), 
  h2("1. Select value of candidates as President"),
  fluidRow(
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valClinton", label = h3("Clinton"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider range 
           sliderInput("valSanders", label = h3("Sanders"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    )
  ),
  hr(),
  fluidRow(
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valCarson", label = h3("Carson"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valCruz", label = h3("Cruz"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valKasich", label = h3("Kasich"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valRubio", label = h3("Rubio"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("valTrump", label = h3("Trump"), min = 0, 
                       max = 100, value = 50, step = 1, round = TRUE)
    )
  ),
  
  hr(),
  h2("2. Select probability of winning matchups"),
  
  fluidRow(
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinClintonvsCarson", label = h3("Probability Clinton beats Carson"), min = 0, 
                       max = 1, value = .5, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinClintonvsCruz", label = h3("Probability Clinton beats Cruz"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinClintonvsKasich", label = h3("Probability Clinton beats Kasich"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinClintonvsRubio", label = h3("Probability Clinton beats Rubio"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinClintonvsTrump", label = h3("Probability Clinton beats Trump"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinSandersvsCarson", label = h3("Probability Sanders beats Carson"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinSandersvsCruz", label = h3("Probability Sanders beats Cruz"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinSandersvsKasich", label = h3("Probability Sanders beats Kasich"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinSandersvsRubio", label = h3("Probability Sanders beats Rubio"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    ),
    column(4,
           
           # Copy the line below to make a slider bar 
           sliderInput("pwinSandersvsTrump", label = h3("Probability Sanders beats Trump"), min = 0, 
                       max = 1, value = .50, step = .01, round = TRUE)
    )
  ),
  hr(),
  h2("Click to see who you should vote for (based on REAL math)"),
  fluidRow(
    # Copy the line below to make an action button
    actionButton("action", label = "Mathify"),
    
    # Display this only if the action button pressed
    plotOutput("plot"),
    # Copy the line below to make an action button
    actionButton("reset", label = "Try again")
  )
) #fluidpage
) #shinyui

