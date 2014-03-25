cd externals/TEvA
echo "UPDATING TEvA!"
git pull origin master
ant clean
ant

echo "COPYING TEvA LIBS"
cp deploy/TEvA.jar ../TEvA4R/lib
cp deploy/TEvA.jar ../../inst/java

echo "UPDATING TEvA4R!"
cd ../TEvA4R
git pull origin master
ant clean
ant

echo "COPYING TEvA4R LIBS"
cp dist/TEvA4R.jar ../../
cp dist/TEvA4R.jar ../../inst/java

echo "MOVING BACK TO HOME DIRECTORY"
cd ../../

