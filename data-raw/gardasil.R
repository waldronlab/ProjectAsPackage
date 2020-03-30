## code to prepare `gardasil` dataset goes here
## The base for this file was created using `usethis::use_data_raw("gardasil")`
gardasil <- ProjectAsPackage::read_gardasil(other.as.NA = TRUE)
usethis::use_data(gardasil, overwrite = TRUE)
