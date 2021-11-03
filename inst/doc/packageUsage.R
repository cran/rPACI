## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = F----------------------------------------------------------------
#  install.packages("rPACI", dependencies = TRUE)
#  library("rPACI")

## ---- echo = F, warning = F, message=F----------------------------------------
library("rPACI")

## ---- eval = T----------------------------------------------------------------
dataset1 = readCSO(filepath = system.file("extdata","N01.txt", package="rPACI"))

## ---- eval = T----------------------------------------------------------------
head(dataset1)

## ---- eval = F----------------------------------------------------------------
#  dataset2 = readrPACI(filepath = system.file("extdata","ds1.txt", package="rPACI"))

## ---- eval = T----------------------------------------------------------------
dataset3 = readFile(filepath = system.file("extdata","N01.txt", package="rPACI"))

head(dataset3)

## ---- eval = F----------------------------------------------------------------
#  # Simulating an elliptic dataset, with ellipses axis ratio of 0.8 and an orientation of 45 degrees.
#  dataset = simulateData(rings = 18, pointsPerRing = 300, ellipticAxesRatio = 0.8, ellipticRotation = 45)
#  
#  # Now the dataset can be saved to file using 'writerPACI' (check the working directory before saving):
#  writerPACI(dataset, "datasetFile.txt")

## ---- eval = T----------------------------------------------------------------
results_N = computePlacidoIndices(dataset1)
results_N

## ---- eval = T, fig.width = 7, fig.height = 4---------------------------------
  plotSingleCornea(dataset1, results_N, filename = "N01.txt")

## ---- eval = T, fig.width = 7, fig.height = 4---------------------------------
  res_K = analyzeFile(system.file("extdata","K01.txt", package="rPACI"), drawplot=TRUE)
  res_K

## ---- eval = T, fig.width = 7, fig.height = 4---------------------------------
# Generate a sample dataset
dataset = simulateData(rings = 12, maximumMireDisplacement = 0.2, mireDisplacementAngle = 50)

# Analyze the dataset
res_dataset = analyzeDataset(dataset = dataset)
res_dataset

## ---- eval = T, fig.width = 7, fig.height = 4---------------------------------
resultsAll = analyzeFolder(path = system.file("extdata", package="rPACI"), individualPlots = T, summaryPlot = T)  
resultsAll

## ---- eval = T----------------------------------------------------------------
resultsAll[,c(13,1)]

## ---- eval = F, fig.width = 7, fig.height = 4---------------------------------
#  # Simulate the patient's measures over time
#   dataT1 = simulateData(rings = 12, maximumMireDisplacement = 0.15, mireDisplacementAngle = 10)
#   dataT2 = simulateData(rings = 12, maximumMireDisplacement = 0.15, mireDisplacementAngle = 45)
#   dataT3 = simulateData(rings = 12, maximumMireDisplacement = 0.2, mireDisplacementAngle = 50)
#  
#  # Create a list containing the data
#  data = list(
#   dataT1 = dataT1,
#   dataT2 = dataT2,
#   dataT3 = dataT3
#  )
#  
#  # Analyze the data over time
#  analyzeEvolution(data = data)

## ---- eval = T, fig.width = 7, fig.height = 4---------------------------------
# Specify a folder path to analyze a patient's evolution over time
analyzeEvolution(data = system.file("extdata/evolution/", package="rPACI"), fileExtension = 'txt')


## ---- echo = F, eval = F, fig.width = 4, fig.height = 4-----------------------
#  # library(DiagrammeR)
#  # DiagrammeR::grViz("digraph {
#  #
#  # graph [layout = dot]
#  #
#  # # define the global styles of the nodes. We can override these in box if we wish
#  # node [shape = rounded, style = filled, fillcolor = Pink]
#  #
#  # step1 [label = 'How many patients?', fillcolor = Beige]
#  # step2 [label = 'How many measures?', fillcolor = Beige]
#  # step3 [label =  'Data on file or \n data.frame?', fillcolor = Beige]
#  # leaf1 [label = 'analyzeFile()']
#  # leaf2 [label= 'analyzeDataset()']
#  # leaf3 [label = 'analyzeEvolution()']
#  # leaf4 [label = 'analyzeFolder()']
#  #
#  #
#  # # edge definitions with the node IDs
#  # step1 -> step2 [label='One']
#  # step1 -> leaf4 [label='Several']
#  # step2 -> step3 [label='Single']
#  # step2 -> leaf3 [label='Repeated']
#  # step3 -> leaf2 [label='Data loaded in \nglobal environment']
#  # step3 -> leaf1 [label='External \nfile']
#  # }")

