cd externals\TEvA
echo "UPDATING FROM REPOSITORY!"
git pull
echo "CLEANING AND REBUILDING!"
call ant clean
call ant
echo "COPYING TO TEvA4R FOLDER AND R PACKAGE"
copy /Y deploy\TEvA.jar ..\TEvA4R\lib
copy /Y deploy\TEvA.jar ..\..\inst\java

echo "MOVING INTO TEvA4R FOLDER"
cd ..\TEvA4R

echo "UPDATING TEvA4R
git pull

echo "REBUILDING TEvA4R"
call ant clean
call ant

echo "COPYING TEvA4R TO HOME FOLDER AND R PACKAGE"
copy /Y dist\TEvA4R.jar ..\..\
copy /Y dist\TEvA4R.jar ..\..\inst\java


echo "MOVING BACK TO RTEVA FOLDER"
cd ..\..\
