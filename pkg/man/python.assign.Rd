\name{python.assign}
\alias{python.assign}
\alias{python.get}
\title{ Assign and get variables in Python from R }
\description{
  Functions that assign and get Python variables from R.
}
\usage{
  python.assign(var.name, value, ...)
  python.get(var.name)
}
\arguments{
  \item{var.name}{ a character string containing a valid python variable name }
  \item{value}{ an R object whose equivalent wants to be assigned to the variable in python }
  \item{...}{ other parameters passed to the \code{RJSONIO::toJSON}; see the examples below }
}
\details{
    These functions can assign values to variables in Python as well as get their values back to R.
    Objects are serialized as json strings while being transferred between R and Python.
    
    
}
\value{
    Function \code{python.get} returns a R version of the Python variable \code{py.var}.
}
\references{ \url{http://code.google.com/p/simplejson} }

\examples{

a <- 1:4
python.assign( "a", a )
python.exec( "b = len( a )" )
python.get( "b" )

python.exec("import math")
python.get("math.pi")

# numeric precision
python.assign("a", 123456789)
python.exec("print(a)")

python.assign("a", 123456789, digits = 9)
python.exec("print(a)")

}

\keyword{ manip }

