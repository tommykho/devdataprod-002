---
title       : Pizza Ordering
subtitle    : Reproducible Pitch Presentation
author      : Tommy Ho
job         : 
logo        : logo.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Pizza Ordering, a Shiny App
- Calculates the order amount from number and size of the pizza. 
- Interactive. Responsive.
- Works on phone, tablet and laptop.
- Fast and easy to deploy.

For a copy of the Shiny App
- URL: *https://tommyho.shinyapps.io/devdataprod-002/*
- GitHub: *https://github.com/tommykho/devdataprod-002/*
- Download code:

```
git clone https://github.com/tommykho/devdataprod-002.git
```

--- .class #id 

## R in action within Slidify (data)

```r
mQty <- 1:10
oAmount <- paste('$', 12 * mQty)
df <- data.frame(mQty, oAmount)
df
```

```
##    mQty oAmount
## 1     1    $ 12
## 2     2    $ 24
## 3     3    $ 36
## 4     4    $ 48
## 5     5    $ 60
## 6     6    $ 72
## 7     7    $ 84
## 8     8    $ 96
## 9     9   $ 108
## 10   10   $ 120
```

--- .class #id 

## R in action within Slidify (plot)

```r
mQty <- 1:10
oAmount <- 12 * mQty
plot(mQty, oAmount)
```

![plot of chunk plot01](assets/fig/plot01.png) 

--- .class #id 

## R in action within Slidify (curve)

```r
curve(sin(x), -12.56, 12.56, main = "Sine Wave: 4 Pi")
```

![plot of chunk curve01](assets/fig/curve01.png) 
