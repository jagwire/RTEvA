teva.evolve <- function(networks) {
 message("evolving!");  
 obj <- TEVA();
 dto <- obj$evolve(teva.networks.toJArray(networks), hash.asCSV(defaults));
 output = hash(list(""));

 output[["spawners"]] <- dto$getSpawns();
 output[["consumers"]] <- dto$getConsumes();
 output[["informers"]] <- dto$getInforms();
 output[["windows"]] <- dto$getWindows();
 output[["internal"]] <- dto;
 return(output);
}

teva.evolve.e2e <- function() {
  nets <- teva.networks.e2e();
  nets.as.csv <- teva.networks.toJArray(nets);
  teva <- TEVA();
  topic_model <- teva$evolve(nets.as.csv, hash.asCSV(defaults));
  return(topic_model);
}
