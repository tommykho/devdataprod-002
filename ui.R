library(shiny)
library(shinyapps)

shinyUI(pageWithSidebar(
  headerPanel("Pizza Ordering"),
  sidebarPanel(
    numericInput('mQty', 'Quantity', 1, min = 1, max = 10, step = 1),
    radioButtons("mSize", "Size",
                 c("6' Personal ($5)" = 5,
                   "8' Small ($8)" = 8,
                   "10' Medium ($12)" = 12,
                   "12' Large ($18)" = 18,
                   "14' Extra Large ($24)" = 24),
                 selected = 12),
    checkboxGroupInput("mToppings", "Toppings",
          c("Pepperoni, Classic" = "P",
          "Sausage, Italian" = "S",
          "Ham" = "H",
          "Chicken, Grilled" = "GC",
          "Bacon, Pieces" = "BP",
          "Olives, Black" = "BO",
          "Peppers, Green" = "GP",
          "Pineapple" = "PA")),
    radioButtons("mSauce", "Sauces",
          c("Red Pizza Sauce" = "RED",
          "Creamy Garlic Sauce" = "WHT",
          "BBQ Sauce" = "BBQ"),
        selected = "RED"),
    br(''),
    dateInput("mDate", "Pickup Date:"),
    sliderInput("mTime", "Pickup Time (1 - 9 PM):", 1, 9, 1, step = 1,
                round = FALSE, format = "#,##0", locale = "us",
                ticks = TRUE, animate = FALSE),
    br(''),
    actionButton("mPrint", label = "Print")
  ),
  mainPanel(
    h3('Thank you for your order'),
    h4('Your order amount is:'),
    verbatimTextOutput("oamount"),
    
    conditionalPanel(
      condition <- "1",
      br(''),
      h3('Instructions'),
      p('To order your pizza(s) online, please fill in the information to the left:'),
      p('1. Select quantity and size'),
      p('2. Select toppings and sauce'),
      p('3. Select the pickup date and time'),
      p('4. Click Print'),
      p('Your order amount will show above.'),
      p('Your order detail will show below.')
    ),
        
    conditionalPanel(
      condition <- "1",
      br(''),
      h4('Order Details:'),
      h5('Date & Time'),
      verbatimTextOutput("odate"),
      h5('Quantity'),
      verbatimTextOutput("oqty"),
      h5('Toppings'),
      verbatimTextOutput("otoppings"),
      h5('Sauce'),
      verbatimTextOutput("osauce"),
      h5('Unit Price'),
      verbatimTextOutput("osize"),
      h5('Number of Print button click'),
      verbatimTextOutput("oprint")
    )
  )
))