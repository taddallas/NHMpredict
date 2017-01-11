#' Search site-level information from the PREDICTS database
#'
#' @param query full text search of data (default=NULL)
#' @param limit number of records to download (if NULL, set to max value = 5000)
#' @param year currently only 2015 data are available through the NHM data API (default=2015)
#' 
#' @return list of 5 entries (resource_id, fields, records, _links, and total)
#'
#' @export


nhm_site <- function(query=NULL, limit=NULL, year=2015){
  url <- "http://data.nhm.ac.uk"
  if(year == 2015){id <- '3e87b8cd-4d27-4ba1-b9b5-b2a279b7c936'}
  if(year == 2016){id <- '902f084d-ce3f-429f-a6a5-23162c73fdf7'}
  ckanr_setup(url = url)
  dat <- ds_search(resource_id=id, url=url, as='table', limit=limit, q=query)
  dat
}


