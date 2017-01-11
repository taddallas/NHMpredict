NHMpredict 
====

`NHMpredict` gives you access to data from the PREDICTS database, which stands for _Projecting Responses of Ecological Diversity In Changing Terrestrial Systems_. 




```r
install.packages("devtools")
devtools::install_github("taddallas/NHMpredict")
```


```r
library("NHMpredict")
```



Functionality will evolve as the data become more open. Currently the site summary data is only available by entering an email address, and obtaining a download link. I believe this will change in the future though. In the meantime, `nhm_site` accesses the 2015 PREDICTS database information. Queries are limited to 5000 entries, and I can't figure out a way to search specific columns, which would be useful. 


I welcome contributions to this package. 
