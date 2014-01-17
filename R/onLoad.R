.onLoad <- function(libname, pkgname) {
 print(paste("LOADING",pkgname, "in",libname));

 print("UNSETTING JAVA_HOME ENVIRONMENT VARIABLE");
 Sys.setenv(JAVA_HOME="");

 print("LOADING rJava!");
 library(rJava);

 print("STARTING JVM!");
 .jinit();


 print("SETTING UP CLASSPATH");
 .jpackage(pkgname, lib.loc=libname);
}