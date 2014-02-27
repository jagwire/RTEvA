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

teva.networks.toCSV2 <- function(networks) {
  message("TO CSV 2.0!");
  network_index <- 1;
  networks.out <- "node.1,node.2,weight";
  
  number_of_networks <- length(networks);
  message(paste("Number of networks: ", number_of_networks));

  while(network_index <= number_of_networks) {
    message(paste("Processing network: ", network_index));
    row_index <- 1;
    number_of_rows <- length(networks[[network_index]][[1]]);
    
    message(paste("Number of rows: ", number_of_rows));
    rows <- NULL;
    while(row_index <= number_of_rows) {
      # separate columns via commas 
      row <- paste(toString(networks[[network_index]][[1]][[row_index]]), toString(networks[[network_index]][[2]][[row_index]]), toString(networks[[network_index]][[3]][[row_index]]), sep=",");    
      message(paste("PROCESSING ROW: ", row));
      
      # separate rows via newlines
      if(is.null(rows)) {  
	 rows <- row;        
      } else {

	 rows <- paste(toString(rows), row, sep="\n");
      }
       
      row_index <- row_index + 1;
      message("END OF LOOP!");
    }
    #separate networks via equals.
    networks.out <- paste(toString(networks.out), rows, sep="=");
    
    network_index <- network_index + 1;
  }
  message("ENDING CSV FUNCTION!");
  return(networks.out);
}

teva.networks.e2e <- function() {
  teva.setOptions();
  csv_path <- file.choose();
  csv_data <- readChar(csv_path, file.info(csv_path)$size);

  return(teva.networks(csv_data));

}