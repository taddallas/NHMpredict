#' Search the PREDICTS database
#'
#' @param query full text search of data (default=NULL)
#' @param limit number of records to download (if NULL, set to max value = 5000)
#' 
#' @return list of 5 entries (resource_id, fields, records, _links, and total)
#'
#'
#' @export

nhm_species <- function(limit=NULL){
  url <- "http://data.nhm.ac.uk"
  id <- "78dac1a9-6aa0-4dcb-9750-50df04f8ca6e"
  ckanr_setup(url = url)
  dat <- ds_search(resource_id=id, url=url, as='table', limit=limit, q=query)
  dat
}
