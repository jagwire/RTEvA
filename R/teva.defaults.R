my.secret.variable <- 31339

defaults = hash(c(1));

defaults$expire_consumed_communities<-TRUE
defaults$scoring_method<-"SIMILARITY"
defaults$minimum_link_weight<-0.5
defaults$cfinder_license_path<-"/Applications/CFinder-v2.0.5/licence.txt"
defaults$cfinder_executable_path<-"/usr/local/bin/cfinder"
defaults$fixed_clique_size<-4
defaults$filename_identifier<-"TEvA"

#Provding a name with no path prefix (e.g. ./) will cause the system
#to search the root of the classpath; prepend a path prefix if you
#want to load a file
defaults$word_replacement_dictionary<-"default_replacement_dictionary.txt"

#Provding a name with no path prefix (e.g. ./) will cause the system
#to search the root of the classpath; prepend a path prefix if you
#want to load a file
defaults$stopword_list<-"default_stopwords.txt"
defaults$sliding_window_delta<-60000
defaults$sliding_window_size<-600000
defaults$wordij_indirection_size<-3
defaults$wordij_tuple_size<-2
defaults$working_directory<-"./work"
defaults$overwrite_existing_networks<-FALSE
defaults$overwrite_existing_analyses<-FALSE

#We set this option so when we take our larger numbers, its in expanded form and not notated
teva.setOptions <- function() {
   options("scipen"=100, "digits"=4)
}


teva.e2e <- function() {
   teva.setOptions();

   message("Welcome to RTEvA.");
   message("Press enter to choose your cfinder license.");
   readline("");
   l_path <- file.choose();
   defaults[['cfinder_license_path']] <- l_path;   
   
   message("Press enter to choose your cfinder directory: ");
   readline("");
   exec_path = choose.dir(caption="Please select the directory where cfinder is installed");
   defaults[['cfinder_executable_path']] <- exec_path;

   message("Alright, we're ready to go!");
   message("Press enter to specify the path to your CSV file");
   readline("");
   csv_path = file.choose();   
   csv_data = readChar(csv_path, file.info(csv_path)$size);
 
   message(csv_data);

   networks <- teva.networks(csv_data);
   
   message("Press enter to evolve networks data");
   topic_model <- teva.evolve(networks);
   
   
}


teva.defaults <-
function(a, ...) {
 teva.setOptions();

 
 a_s <- as.list(sys.call());

 my.secret.variable <- 31337
 
 for(key in names(a_s)) {
   if(key != "") {
     defaults[[key]] = a_s[[key]];
   }
 }

}

TEVA <- function() {
  return (.jnew("edu/missouri/teva/TEvA"));
}