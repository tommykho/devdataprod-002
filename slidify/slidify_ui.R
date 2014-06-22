#install_github('slidify', 'ramnathv')
#install_github('slidifyLibraries', 'ramnathv')
library(devtools)
library(slidify)
library(shiny)

#author slides
author("mydeck")

#generate slides
slidify("index.Rmd")

#deploy slides
publish(user = "tommykho", repo = "slidify", host = 'github')