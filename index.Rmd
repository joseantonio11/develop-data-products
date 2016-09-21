---
title       : Computer Prices Per Quarter, Year and Manufacturer
subtitle    : Coursera Project - Developing Data Product Course
author      : Jose Antonio (joseantonio@me.com)
job         : Big Data Analytics Researcher
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## INTRODUCTION

The Shiny App is about Computer Prices Per Quarter and Year.

The Manufacturers are:

- DELL (variable PCDELL)
- HP (variable PCHP)
- APPLE (variable iMAC)

For the years of 2010 to 2016.

The Dataset is summarized per quarter to test Shiny apps.

----
## SHINE APPs AND INTERFACE

The Shine APPs interface show to the user:

- The choice for the Manufacturer.
- The choice for the Year (from 2010 to 2016).
- Action Button to generate graphs, summaries and observations.

You can use the Interface and test the App using the link:

https://joseantonio.shinyapps.io/PROJETO-FINAL/ 

You can check the ui.R and server.R code at GitHub: 

https://github.com/joseantonio11/develop-data-products 


--- 
## CONCLUSIONS AND LEARNED

Shiny is excellent to publish R projects in HTML with user interaction.

I learned:
- How to delivery server side apps using Shinyapps.io
- How Shiny apps instantly respond to user inputs.
- Some about Reactive Programming (the coding paradigm to use Shiny).
- The render*() functions, reactive expressions, observers and plots.
- Some tools to modify the look of Shiny apps.

---
## RESOURCES

R-Studio offers great resources for shine at http://shiny.rstudio.com/

But, one video course that I appreciate is from O'Reilly, with Garrett Grolemund.

Follow the link: http://shop.oreilly.com/product/0636920051442.do 

If you have annual subscription for O'Reilly Safari Books online, it is available.
