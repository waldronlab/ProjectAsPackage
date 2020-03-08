# Project-as-a-package

## Summary

The [ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) package and this vignette provide a template for generating reproducible analyses as an R package. Click on "[Use this template](https://github.com/waldronlab/ProjectAsPackage/generate)" to create a new GitHub repo starting with this code. 

[ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) is set up as a GitHub "template" allowing you to initiate a new repository with it as the starting point for a new analysis. [Transfer to your own GitHub repo](https://github.com/waldronlab/ProjectAsPackage/generate).

[ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) demonstrates setup for analyzing published data from:

> Chou B, Krill LS, Horton BB, Barat CE, Trimble CL:
> Disparities in human papillomavirus vaccine completion among
> vaccine initiators. Obstet. Gynecol. 2011, 118:14–20.

## Building

Building is most easily done using the "Build" menu in [RStudio](https://rstudio.com/). Building roxygen documentation requires the [roxygen2](https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html) package.

## pkgdown

To easily publish your package and analysis as a web site using [pkgdown](https://pkgdown.r-lib.org/articles/pkgdown.html) (publicly on GitHub-pages or locally), you can use the commands in the script [update.sh](https://github.com/waldronlab/ProjectAsPackage/blob/master/update.sh). This very short script uses the command-line program `gh-pages` to publish to GitHub pages, and you can install it by `pip install gh-pages`.

You can customize the website with the [_pkgdown.yml](https://github.com/waldronlab/ProjectAsPackage/blob/master/_pkgdown.yml) file using instructions from [pkgdown](https://pkgdown.r-lib.org/articles/pkgdown.html).

## Licensing

<p xmlns:dct="http://purl.org/dc/terms/" xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="https://licensebuttons.net/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <a rel="dct:publisher"
     href="https://waldronlab.io">
    <span property="dct:title">Levi Waldron</span></a>
  has waived all copyright and related or neighboring rights to
  <span property="dct:title">ProjectAsPackage</span>.
This work is published from:
<span property="vcard:Country" datatype="dct:ISO3166"
      content="US" about="www.waldronlab.io">
  United States</span>.
</p>

## Authors

Chloe Mirzayi, Audrey Renson, Levi Waldron \
CUNY Graduate School of Public Health and Health Policy \
Institute for Implementation Science in Public Health
