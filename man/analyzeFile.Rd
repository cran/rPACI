% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rPACI.R
\name{analyzeFile}
\alias{analyzeFile}
\title{Analysis of a single corneal topography files}
\usage{
analyzeFile(path, drawplot = TRUE)
}
\arguments{
\item{path}{A corneal topography file, as exported by a Placido disk corneal topographer.}

\item{drawplot}{An optional parameter indicating whether a plot of results should be displayed or not.}
}
\description{
Analyze a corneal topography file. This function combines the three operations of functions \link[rPACI]{readCornealTopography}, \link[rPACI]{computePlacidoIndices} and \link[rPACI]{plotSingleCornea}.
}
\examples{
analyzeFile(system.file("extdata","N01.txt", package="rPACI"))
}
