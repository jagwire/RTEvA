RTEvA
=====

Integration of TEvA project into R


Building, Checking, and Installing
==================================

* Make sure R is in your path
* cd into parent directory of RTEvA
* R CMD build RTEvA
* R CMD check RTEvA
* Inside R, issue the following command:

install.packages('Path:\\To\\RTEvA\\RTEvA_1.0.tar.gz', repos=NULL, type='Source');

* Lastly, don't forget to issue: library(RTEvA)