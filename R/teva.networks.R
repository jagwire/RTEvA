teva.networks <-
function(csvdata) {

 .teva <- .jnew("edu/missouri/teva/TEvA");
  raws <- .jcall(.teva, "[S","networks", csvdata, hash.asCSV(defaults));


  #get column names
  cols <- names(read.csv(text=raws[1]));
  
  message(paste("Number of tables: ", length(raws)));
  index <- 2;
  output <- list(1);
  while(index <= length(raws)) {
     output[(index-1)] <- list(read.csv(text=raws[index], col.names=cols,header=FALSE));
     index <- index + 1;
    

  }
  return(output);
}

