\name{teva.lexicalize.from_file}
\alias{teva.lexicalize.from_file}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 teva.lexicalize.from_file
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
teva.lexicalize.from_file(stopwords_file, replacements_file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stopwords_file}{
%%     ~~Describe \code{stopwords_file} here~~
}
  \item{replacements_file}{
%%     ~~Describe \code{replacements_file} here~~
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
function (stopwords_file, replacements_file) 
{
    lexical_model <- hash(list("stopwords", "replacements"))
    lexical_model$stopwords <- read.csv(stopwords_file)
    lexical_model$replacements <- read.csv(replacements_file, 
        header = FALSE)
    return(lexical_model)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
