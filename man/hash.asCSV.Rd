\name{hash.asCSV}
\alias{hash.asCSV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 hash.asCSV
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
hash.asCSV(h)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{h}{
%%     ~~Describe \code{h} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (h) 
{
    out = "key=value"
    for (key in ls(h)) {
        if (key != "") {
            entry = paste(toString(key), toString(h[[key]]), 
                sep = "=")
            out = paste(toString(out), toString(entry), sep = ",")
        }
    }
    return(toString(out))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
