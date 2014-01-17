teva.defaults <-
function(a, ...) {
 a_s <- as.list(sys.call());
 
 for(key in names(a_s)) {
   if(key != "") {
     defaults[[key]] = a_s[[key]];
   }
 }

}
