## This data cleaning might often be more complicated, but in this case
## we've done all the work with the `R/read_gardasil.R` script.
## So this just demonstrates using that script to create the `data/gardasil.rda` file.

gardasil <- ProjectAsPackage::read_gardasil(other.as.NA = TRUE)
save(gardasil, file = "../data/gardasil.rda", compress = "bzip2")  #bzip2 offers a high level of compression but is slower for large files than "gz"
