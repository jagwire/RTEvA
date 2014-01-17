hash.asCSV <-
function(h) {
   out = "key=value";
   for(key in ls(h)) {
    if(key != "") {
      entry = paste(toString(key), toString(h[[key]]), sep="=");
      out = paste(toString(out), toString(entry), sep=",");
    }
  }
  return(toString(out));
}
