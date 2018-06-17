#' Search site-level information from the PREDICTS database
#'
#' @param what which file to download (`refs`, `bibtex`, `summary`, `data`). 
#'	See details for more information.
#'
#' @return list of 5 entries (resource_id, fields, records, _links, and total)
#'
#' @details This function provides a method to download information from the 
#'  PREDICTS 2016 database. The files included in the data store are a data.frame
#'  of references accessible by setting the argument what to `refs`, a bibtex
#'  file that can be downloaded by setting what to `bibtex`, a summary of the 
#'  survey sites accesible by setting what to `summary`, and the full dataset,
#'  accessible by setting what to `data`. 
#' 
#'
#'
#' @export


nhm_getData <- function(what='refs'){
  url <- "http://data.nhm.ac.uk"
  ckanr_setup(url = url)
	id <- '902f084d-ce3f-429f-a6a5-23162c73fdf7'
  packs <- package_show(id=id, as='table')$resources

	if(what == 'refs'){
		db <- ds_search(resource_id=packs$id[6], url=url, as='table', limit=5000)
		return(db)
	}

	if(what == 'bibtex'){
		download.file(packs$url[7], destfile='references.bib')
		print("Downloaded into working directory as 'references.bib'") 
	}

	if(what == 'summary'){
		db <- readRDS(gzcon(url(packs$url[5])))
		return(db)
	}

	if(what == 'data'){
		if(!exists('database.rds')){
			db <- readRDS(gzcon(url(packs$url[4])))
		}else{
			db <- readRDS('database.rds')
		}
		return(db)
	}
}


