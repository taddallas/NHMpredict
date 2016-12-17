#' Access 
#'
#' @param limit number of records to download (if NULL, set to max value = 5000)
#' 
#' @return output
#'
#'
#'
#' @export

nhm_species <- function(limit=NULL){
  url <- "http://data.nhm.ac.uk"
  id <- '902f084d-ce3f-429f-a6a5-23162c73fdf7'
  ckanr_setup(url = url)
  packs <- package_show(id=id, as='table')$resources


}
