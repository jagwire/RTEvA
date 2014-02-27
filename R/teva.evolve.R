teva.evolve <- function(networks) {
 message("evolving!");  
 obj <- TEVA();
 #dto <- .jcall(obj,"Ledu/missouri/teva/TopicModelDTO", "evolve", teva.networks.toCSV(networks), hash.asCSV(defaults)); 
 dto <- obj$evolve(teva.networks.toCSV(networks), hash.asCSV(defaults));
 ouput = hash(list(""));
 
 #output[["spawners"]] <- within(dto,getSpawns());
 #output[["consumers"]] <- within(dto, getConsumes());
 #output[["informers"]] <- within(dto, getInforms());
 

 return(output);
}

teva.evolve.e2e <- function() {
  nets <- teva.networks.e2e();
  nets.as.csv <- teva.networks.toCSV2(nets);
  teva <- TEVA();
  teva$evolve(nets.as.csv, hash.asCSV(defaults));
}