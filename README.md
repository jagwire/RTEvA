#RTEvA

## PREREQUISITES
- JDK 1.7+ (Tested on update 55)
- RStudio

## GETTING STARTED
### Install Mac Dev Tools
- Git
- Subversion
- ant
- Make
- wget

### Install igraph <h6>(needed for Cos Parallel)</h6>
1. download source code: http://sourceforge.net/projects/igraph/files/C%20library/0.6.5/igraph-0.6.5.tar.gz/download
2. Extract to desktop
3. Open terminal to extracted directory
4. ./configure
5. make
6. sudo make install

### Install Cos Parallel<h6>(needed to generate networks from conversation data)</h6>
1. checkout source code: http://svn.code.sf.net/p/cosparallel/code/trunk
2. enter directory of checked out source code
3. ./configure ; make
4. cd extras
5. make

### Installing rJava <h6>(needed to call Java bytecode from R)</h6>
1. set JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre 
2. set JAVA_LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server 
3. set JAVA_LIBS='-L/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server -ljvm' 
4. set JAVA_CPPFLAGS='-I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include/darwin'
5. call: sudo R CMD javareconf
6. open RStudio with LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server: open -a rstudio
7. In RStudio, call: install.packages(‘rJava’, type=‘source’);
8. load rJava
9. start JVM: .jinit()
10. Verify correct JDK usage via: J(“java.lang.System”)$getProperty(“java.version”);

### Installing RTEvA <h6>(The package where the magic happens)</h6>
1. Download  repository
2. change directory to repository directory
3. R CMD build RTEvA
4. R CMD check RTEvA_1.0.tar.gz
5. Open RStudio with LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server: open -a rstudio
6. install.packages(“/path/to/rteva_1.0.tar.gz”, type=“source”, repos=NULL);
7. load rteva: library(RTEvA)

### Setting defaults to point to Cos algorithm <h6>(Tell RTEvA where to look for Cos)</h6>
1. teva.defaults(cos_executable=“/path/to/cos”)
2. teva.defaults(cos_max_cliques_executable=“/path/to/cos/extras/maximal_cliques”)

## BEST PRACTICES <h6>(Making life easier)</h6>
* Create shell script to automatically open rstudio as above, for example (rstudio.sh):

```Shell
#!/bin/sh
LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server: open -a rstudio
```
* set JAVA_HOME, JAVA_LD_LIBRARY_PATH, JAVA_LIBS, and JAVA_CPPFLAGS in .profile or such:
```shell
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre
export JAVA_LD_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server
export JAVA_LIBS='-L/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/jre/lib/server -ljvm'
export JAVA_CPPFLAGS='-I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include -I/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/include/darwin'
```

## FUNCTIONS
### teva.setOptions();
### teva.list.defaults();
### teva.defaults();
### teva.networks();
### teva.evolve();
### teva.membership();
### topic_graph();



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



