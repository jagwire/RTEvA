hash <-
function(entries) {
 #create the hashtable object
 result <- new.env(hash=TRUE, parent=emptyenv(), size=length(entries))
 # for every key name in our entries list
 for(key in names(entries)) {
    #add an entry into the table mirroring the list entry
    result[[key]] = entries[[key]];
 }
 return(result);

}
