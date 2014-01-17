jtestme <- function() {
Sys.setenv(JAVA_HOME="")
library(rJava)
.jinit()
 s <- .jnew("java/lang/String", "Hello World")
  return(s);

}