#' Get information on entire data package
#'
#' @param id dataset id. Can be used to search other data packages available in the NHM if 
#' you'd like (default = NULL, which corresponds to the PREDICTS database id).
#' 
#' @return data.frame contianing information on all files in the PREDICTS database repository.
#'
#' @export


nhm_summary <- function(id=NULL){
  url <- "http://data.nhm.ac.uk"
  if(is.null(id)){id <- '902f084d-ce3f-429f-a6a5-23162c73fdf7'}
  ckanr_setup(url = url)
  packs <- package_show(id=id, as='table')$resources
  packs
}


