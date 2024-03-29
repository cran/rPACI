% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readData.R
\name{readrPACI}
\alias{readrPACI}
\title{Read a corneal topography file in rPACI format}
\usage{
readrPACI(filepath, sep = ",")
}
\arguments{
\item{filepath}{A file path to a corneal topography dataset exported by a Placido disk corneal topographer.}

\item{sep}{The character used as column separator in the file (by default, ",").}
}
\value{
A \code{data.frame} containing the corneal topography points, with columns:
\tabular{lll}{
  \code{x}   \tab\tab The X Cartesian coordinates of the points\cr
  \code{y}   \tab\tab The Y Cartesian coordinates of the points\cr
  \code{ring index}  \tab\tab Number or index of the ring to which each point belongs\cr
}
The resulting \code{data.frame} may also include in its \code{Parameters} attribute (\code{attr(result,'Parameters')}) the list of parameters used for the simulation (only if it was generated with \link[rPACI]{simulateData} and saved with \link[rPACI]{writerPACI}).
}
\description{
This function is intended to read external files with a corneal topography that have been previously exported
by rPACI, using \link[rPACI]{writerPACI}. The file should have the format used by rPACI, i.e., a list with three 
columns (x and y coordinates of each point, and its ring index) and a row per data point
In general, we recommend to use the more general wrapper function \link[rPACI]{readFile} to read any file format.
}
\details{
A corneal topographer is an ophthalmic clinical device that obtains measurements in the cornea (the anterior
part of the eye). A Placido disk corneal topographer makes use of the Placido disk (see references and the 
vignette linked below), which  produce a circular pattern of measurement nodes.

The \link[rPACI]{readrPACI} function is able to read a Placido disk corneal topography from a file that has been
exported previously by \code{rPACI} using the function \link[rPACI]{writerPACI}. The dataset may have been obtained
reading data from a file in other format (e.g. using \link[rPACI]{readFile} or \link[rPACI]{readCSO}), or by 
simulation using \link[rPACI]{simulateData}.  

This file format consists of an optional header of any length (its size is automatically detected) and afterwards, 
three separated columns (x and y coordinates of each point, and its ring index) and a row per data point.

This function produces a \code{data.frame} in the usual format used by \code{rPACI}, i.e., a list with three 
columns (x and y coordinates of each point, and its ring index) and a row per data point, according to the 
function parameters (by default, 24*256 = 6144 rows or data points).

See more details about corneal topographers and the file structure in \href{../doc/topographersDataFormat.html}{\code{vignette("topographersDataFormat", package = "rPACI")}}.
}
\examples{
# A dataset that was read from a corneal topographer file was later saved in the rPACI format.
# It can be read with:
dataset1 = readrPACI(system.file("extdata","ds1.txt", package="rPACI"))

dataset2 = readrPACI(system.file("extdata","ds2.txt", package="rPACI"))
}
\references{
Rowsey, J. James, A. E. Reynolds, and Randy Brown. 1981. "Corneal Topography: Corneascope." Archives of Ophthalmology 99 (6): 1093-1100. \doi{10.1001/archopht.1981.03930011093022}.

Pinero, D. P. 2015. "Technologies for Anatomical and Geometric Characterization of the Corneal Structure and Anterior Segment: A Review." Seminars in Ophthalmology 30 (3): 161-70. \doi{10.3109/08820538.2013.835844}.

Samapunphong, Sopit, and Dimitri Azar. 1998. "Placido and Elevation-Based Corneal Topography. A Review." Ophthalmology Clinics of North America 11 (3): 311-29. \doi{10.1016/S0896-1549(05)70059-6}.
}
