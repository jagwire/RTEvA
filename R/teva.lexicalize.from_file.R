teva.lexicalize.from_file <-
function(stopwords_file, replacements_file) {
lexical_model <- hash(list("stopwords", "replacements"));
lexical_model$stopwords <- read.csv(stopwords_file);
lexical_model$replacements <- read.csv(replacements_file, header=FALSE);
return(lexical_model);
}
