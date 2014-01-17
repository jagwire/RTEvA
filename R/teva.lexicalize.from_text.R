teva.lexicalize.from_text <-
function(stopwords, replacements) { 
lexical_model <- hash(list("stopwords", "replacements"));
lexical_model$stopwords <- read.csv(text=stopwords, header=FALSE);
lexical_model$replacements <- read.csv(text=replacements, header=FALSE);

return(lexical_model);
}
