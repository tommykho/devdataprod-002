shinyServer(
  function(input, output) {
    output$odate <- reactive({paste(input$mDate,"(",input$mTime,"PM )")})    
    output$oqty <- reactive({input$mQty})
    output$otopings <- reactive({input$mTopings})
    output$osauce <- reactive({input$mSauce})
    output$osize <- reactive({input$mSize})
    output$oamount <- reactive({paste("$",input$mQty * as.numeric(input$mSize))})
  }
)