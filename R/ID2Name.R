#' Function to convert term IDs to names in data frame
#'
#' @param x data.frame with a column containg GO IDs
#' @param col.name character indicating the column name containg the GO IDs to be converted
#' @return data.frame with new column containing GO term names from GO IDs
#' @export

ID2Name<-function(x, col.name="term_name"){
  if(!col.name %in% colnames(x)){
    stop("col.name not found in x.")
  }
  if(col.name=="term_name"){
    message("output column will be 'term_name', changing 'term_name' to 'term_id'...")
    x$term_id<-x[,which(colnames(x) %in% col.name)]
    col.name<-"term_id"
  }
  x$term_name<-IDname$term_name[match(x[,which(colnames(x) %in% col.name)], IDname$term_id)]
  return(x)
}
