% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readData.R
\name{readFile}
\alias{readFile}
\title{Read a corneal topography file in any available format (recommended by default)}
\usage{
readFile(filepath, ...)
}
\arguments{
\item{filepath}{A file path to a corneal topography file in any supported format.}

\item{...}{Optional arguments of any of the reading functions.}
}
\value{
A \code{data.frame} containing the corneal topography points, with columns:
\tabular{lll}{
  \code{x}   \tab\tab The X Cartesian coordinates of the points\cr
  \code{y}   \tab\tab The Y Cartesian coordinates of the points\cr
  \code{ring index}  \tab\tab Number or index of the ring to which each point belongs\cr
}
The resulting \code{data.frame} may also include in its \code{Parameters} attribute (\code{attr(result,'Parameters')}) the list of parameters used for the simulation (only if it was generated with \code{simulateData} and saved with \code{writerPACI}).
}
\description{
This function is a general wrapper function, able to read corneal topography files in any format supported 
by \code{rPACI}. Internally, it analyzes the file and detects its format, and then it uses the appropriate 
specific reading function (by now, two are available: \link[rPACI]{readCSO} and \link[rPACI]{readrPACI}). 
This is the reading function recommended by default, as it is able to read any supported file format.
}
\details{
A corneal topographer is an ophthalmic clinical device that obtains measurements in the cornea (the anterior
part of the eye). A Placido disk corneal topographer makes use of the Placido disk (see references and the 
vignette linked below), which  produce a circular pattern of measurement nodes.

This function internally determines the format of the specified file and then applies either \link[rPACI]{readCSO}
or \link[rPACI]{readrPACI} if possible, or else it throws an error (if none can be applied, when the file 
format does not fit any of these two available formats). All this process is transparent to the user, so that 
using \code{readFile} with one file type or another is done in the same way, and it produces the same results. 
The \code{readFile} function propagates its input parameters. See those functions' documentation for more information
about their arguments. 

This function produces a \code{data.frame} in the usual format used by \code{rPACI}, i.e., a list with three 
columns (x and y coordinates of each point, and its ring index) and a row per data point, according to the 
function parameters (by default, 24*256 = 6144 rows or data points).

See more details about corneal topographers and the file structure in \href{../doc/topographersDataFormat.html}{\code{vignette("topographersDataFormat", package = "rPACI")}}.
}
\examples{
# Read the example file "N01.txt" (the file is in the CSO file format)
dataset1 = readFile(system.file("extdata","N01.txt", package="rPACI"))

dataset2 = readFile(system.file("extdata","ds2.txt", package="rPACI"))
}
\references{
Rowsey, J. James, A. E. Reynolds, and Randy Brown. 1981. "Corneal Topography: Corneascope." Archives of Ophthalmology 99 (6): 1093-1100. \doi{10.1001/archopht.1981.03930011093022}.

Pinero, D. P. 2015. "Technologies for Anatomical and Geometric Characterization of the Corneal Structure and Anterior Segment: A Review." Seminars in Ophthalmology 30 (3): 161-70. \doi{10.3109/08820538.2013.835844}.

Samapunphong, Sopit, and Dimitri Azar. 1998. "Placido and Elevation-Based Corneal Topography. A Review." Ophthalmology Clinics of North America 11 (3): 311-29. \doi{10.1016/S0896-1549(05)70059-6}.
}
