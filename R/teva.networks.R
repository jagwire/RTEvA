teva.networks <-
function(csvdata) {

 .teva <- .jnew("edu/missouri/teva/TEvA");
  message("\nPress enter to begin processing your csv file");
  readline("");
  .jcall(.teva, "[S","networks", csvdata, hash.asCSV(defaults));
}
