## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#    library(rPACI)
#    dataset = simulateData()
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  library(rPACI)
  dataset = simulateData()
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(rings = 15, pointsPerRing = 128, diameter = 8)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(rings = 15, pointsPerRing = 128, diameter = 8)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(rings = 15, ringRadiiPerturbation = 0.7)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(rings = 15, ringRadiiPerturbation = 0.7)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(rings = 12, maximumMireDisplacement = 2, mireDisplacementAngle = 45)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(rings = 12, maximumMireDisplacement = 2, mireDisplacementAngle = 45)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(rings = 12, maximumMireDisplacement = 2, mireDisplacementAngle = 45, mireDisplacementPerturbation = 1.2)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(rings = 12, maximumMireDisplacement = 2, mireDisplacementAngle = 45, mireDisplacementPerturbation = 1.2)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(ellipticAxesRatio = 0.8, ellipticRotation = 30)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(ellipticAxesRatio = 0.8, ellipticRotation = 30)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(overallNoise = 0.2)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(overallNoise = 0.2)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

## ---- eval=FALSE--------------------------------------------------------------
#    dataset = simulateData(maximumMireDisplacement = 1.5, mireDisplacementAngle = 135, ringRadiiPerturbation = 1, mireDisplacementPerturbation = 0.8, ellipticAxesRatio = 0.8, ellipticRotation = 30)
#    plot(dataset$x,dataset$y)

## ---- echo=FALSE--------------------------------------------------------------
  dataset = simulateData(maximumMireDisplacement = 1.5, mireDisplacementAngle = 135, ringRadiiPerturbation = 1, mireDisplacementPerturbation = 0.8, ellipticAxesRatio = 0.8, ellipticRotation = 30)
  par(mar=c(1.5,1.6,.1,.1), mgp=c(0,0.5,0))
  plot(dataset$x,dataset$y,pch=20,cex=0.3,cex.axis=0.5,asp=1, xlab="", ylab="") 

