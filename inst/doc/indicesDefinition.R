## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo=FALSE, warning=FALSE-----------------------------------------------
  library(rPACI)

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(rings = 13)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(rings = 13)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

