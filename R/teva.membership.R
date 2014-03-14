teva.membership.e2e <- function() {
    teva.setOptions();
    csv_path <- "/Users/Ryan/MM15.csv";
    csv_data <- readChar(csv_path, file.info(csv_path)$size);
    networks <- teva.networks(csv_data);
;
    topic_model <- teva.evolve(networks);

    teva <- TEVA();
    output <- teva$membership(csv_data, hash.asCSV(defaults), topic_model[["internal"]]);
    return(output);
}
