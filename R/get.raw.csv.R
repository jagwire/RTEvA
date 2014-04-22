get.raw.csv <- function(path) {
    return(readChar(path, file.info(path)$size));
}
