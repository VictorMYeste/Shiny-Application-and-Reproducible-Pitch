---
title       : Reproducible Pitch
subtitle    : Pitch of the app of Major municipalities from Spain
author      : Víctor Yeste
job         : Coursera student
logo        : spain-flag.jpeg
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Do you want to live in Spain?

There are only 6 cities with more than half a million of people in Spain. So if you want to live in a big city... not much of a choice.

1. Madrid
2. Barcelona
3. Valencia
4. Sevilla
5. Zaragoza
6. Málaga.

Six cities for your next home. Which one to choose?

--- .slide #slide2

## Database of cities

The database have the following data:


```
##        name     pop   area                col
## 1    Madrid 3334730 604.45    > 1 million pop
## 2 Barcelona 1664182 101.35    > 1 million pop
## 3  Valencia  800215 134.65 > 750 thousand pop
## 4   Sevilla  691395 140.80 > 500 thousand pop
## 5  Zaragoza  681877 973.78 > 500 thousand pop
## 6    Málaga  578460 398.25 > 500 thousand pop
```

--- .slide #slide3

## But, but... 6 cities is too many

Yes. 6 can be really hard to choose, even more if Spain has really different cities... but all are really beautiful.

<strong>So we're going to help you!</strong>

<div style="text-align: center"><img src="assets/img/spain.jpeg" width="50%"></div>

--- .slide #slide4

## Use the APP... and choose wisely

Just select the minimum of population and area that you would like your city to have... and the app will show you a plot with how many comply with your selection. And even a list of the cities you can choose.

<p style="text-align: center; margin-top: 100px"><a href="https://victoryeste.shinyapps.io/shiny-application-and-reproducible-pitch/" class="app-link" target="_blank">Start!</a></p>
