RTEvA
=====

Integration of TEvA project into R


Building, Checking, and Installing
==================================

* Make sure R is in your path
* cd into parent directory of RTEvA
* R CMD build RTEvA
* R CMD check RTEvA

==================================
In order for RStudio to run on MAC
OS X and recognize Java 1.7+, I issue the following command:

LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home/jre/lib/server: open -a rstudio

===================================
* Inside R, issue the following command:

install.packages('Path:\\To\\RTEvA\\RTEvA_1.0.tar.gz', repos=NULL, type='Source');

* Lastly, don't forget to issue: library(RTEvA)
