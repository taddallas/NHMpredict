#' Access or download (bib) PREDICT database references
#'
#' @param bib download bibtex file containing all the references (boolean)  
#' @param limit number of records to download (if NULL, set to max value = 5000)
#' 
#' @return outputs a data.frame of 18 columns containing 
#' information on literature cited as part of the PREDICT database
#'
#'


nhm_references <- function(bib=FALSE, limit=NULL){
  url <- "http://data.nhm.ac.uk"
  id <- '902f084d-ce3f-429f-a6a5-23162c73fdf7'
  ckanr_setup(url = url)
  packs <- package_show(id=id, as='table')$resources
  if(is.null(limit)){
    limit <- 5000; 
    warning('max limit value is set at 5000')
  }
  refs <- ds_search(resource_id=packs$id[6], url=url, as='table', limit=limit)
  if(bib){
    download.file('http://data.nhm.ac.uk/dataset/902f084d-ce3f-429f-a6a5-23162c73fdf7/resource/78c21dfb-3f17-4e01-9d37-af67806fb124/download/references.bib', 
    method='libcurl', destfile='references.bib')
  }
  refs
}


