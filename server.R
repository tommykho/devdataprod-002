shinyServer(
  function(input, output) {
    output$odate <- reactive({paste(input$mDate,"(",input$mTime,"PM )")})    
    output$oqty <- reactive({input$mQty})
    output$otoppings <- reactive({input$mToppings})
    output$osauce <- reactive({input$mSauce})
    output$osize <- reactive({input$mSize})
    output$oprint <- reactive({as.numeric(input$mPrint)})
    output$oamount <- reactive({paste("$", input$mQty * as.numeric(input$mSize), 
                                      "for", {input$mQty}, "pizza(s)")})
  }
)