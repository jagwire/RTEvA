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

===================================
The following dependencies need to be installed prior to downloading, building, and checking of RTEvA.
Many of them can be found by installing Mac OS X developer tools.

Dependencies:
* GNU Make - needed for building Cos Parallel library
* igraph - Dependency of Cos Parallel library
* subversion - for downloading Cos Parallel library
* git - for downloading TEvA and TEvA4R from github
* wget - for testing internet connection
* ant - for building TEvA and TEvA4R

To Install igraph:

1. Download source code here: http://sourceforge.net/projects/igraph/files/C%20library/0.6.5/igraph-0.6.5.tar.gz/download
2. Extract to Desktop
3. Open Terminal to extracted directory
4. ./configure
5. make
6. sudo make install

To Install Cos Parallel Library:
1. svn checkout http://svn.code.sf.net/p/cosparallel/code/trunk cosparallel
2. ./configure; make
3. cd extras/
4. make


RJava needs to be installed, from source, with the proper JDK. This will get tricky.
I have found the following pattern works:

I have the following variables set in my ~/.profile file:

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre
JAVA_LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server
JAVA_LIBS='-L/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server -ljvm'
JAVA_CPPFLAGS='-I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include/darwin'

* You may need to change the jdk1.7.0_51.jdk pieces to reflect your current JDK version.
* call "sudo R CMD javareconf" from the terminal.
* RStudio needs to be opened with the above command repeated here below:

LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server: open -a rstudio
- I have a shell script containing the above, named rstudio.sh. This way I only need invoke the script instead of trying to type out the above line.

* With RStudio launched, we need to install rJava from source via:

install.packages("rJava', type="source");

* We can test things worked out correctly, by loading the rJava library like so:

library(rJava)
* ... and then issuing the following commands at the RStudio prompt:

.jinit()

J("java.lang.System")$getProperty("java.version");

* ... the output should match the jdk version from your enviroment variables; at least JDK  1.7+ is needed:
[1] "1.7.0_51"

With RJava installed, we can then follow the instructions above for building, checking, and installing RTEvA.
With RTEvA installed, don't forget to set the default variables to point toward your installation of Cos and maximal_cliques.
* This is typically done at the RStudio prompt via:

teva.defaults(cos_max_cliques_executable='path/to/cos/extras/maximal_cliques', cos_executable='path/to/cos')

* ... and this can be verified via:

defaults[['cos_executable']]

and 

defaults[['cos_max_cliques_executable']]



========================================



