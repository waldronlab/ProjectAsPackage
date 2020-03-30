[![Travis-CI Build Status](https://travis-ci.org/waldronlab/ProjectAsPackage.svg?branch=master)](https://travis-ci.org/waldronlab/ProjectAsPackage)
[![Coverage Status](https://codecov.io/github/waldronlab/ProjectAsPackage/coverage.svg?branch=master)](https://codecov.io/github/waldronlab/ProjectAsPackage?branch=master)


# Project-as-a-package


## Summary

[ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) provides a template for generating reproducible analyses as an R package. Why? Using an R package has some advantages:

* You can separate re-usable functions from your analysis, and have help pages for these functions. You can also use help pages as "codebooks" for the datasets.
* You can include data and code in the same package. If the data are somewhat big, you can use [Git Large File Storage](https://git-lfs.github.com/). 
* You can automatically install all needed packages when installing this package, just by adding these packages to the "Depends" section or "Imports" section of the DESCRIPTION file.
* You can have one or more `.Rmd` files in the "vignettes" directory that reproduce your analysis, and take advantage of rmarkdown caching to speed up running them.
* You can use a local package or GitHub private repo before you are ready to make your code/data public. Then once you publish on GitHub, your analysis will be both easily reproducible and professional-looking.

## The data

[ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) demonstrates setup for analyzing published data from:

> Chou B, Krill LS, Horton BB, Barat CE, Trimble CL:
> Disparities in human papillomavirus vaccine completion among
> vaccine initiators. Obstet. Gynecol. 2011, 118:14–20.

## How to make your own copy of ProjectAsPackage on GitHub

[ProjectAsPackage](https://www.github.com/waldronlab/ProjectAsPackage) is set up as a GitHub "template" allowing you to initiate a new repository with it as the starting point for a new analysis. Click on "[Use this template](https://github.com/waldronlab/ProjectAsPackage/generate)" to create a new GitHub repo starting with this code. 

## Building

Building is most easily done using the "Build" menu in [RStudio](https://rstudio.com/). Building roxygen documentation requires the [roxygen2](https://cran.r-project.org/web/packages/roxygen2/vignettes/roxygen2.html) package.

## pkgdown to make a web page

To easily publish your package and analysis as a web site using [pkgdown](https://pkgdown.r-lib.org/articles/pkgdown.html) (publicly on GitHub-pages or locally), you can use commands in the script [update.sh](https://github.com/waldronlab/ProjectAsPackage/blob/master/update.sh). This very short script runs the command `pkgdown::build_site(lazy=TRUE)`. 

You can customize the website with the [_pkgdown.yml](https://github.com/waldronlab/ProjectAsPackage/blob/master/_pkgdown.yml) file using instructions from [pkgdown](https://pkgdown.r-lib.org/articles/pkgdown.html). 

### Automatic hyperlinking to help pages

Note that the line in this [_pkgdown.yml](https://github.com/waldronlab/ProjectAsPackage/blob/master/_pkgdown.yml) providing the site URL is only there to provide correct hyperlinking to help pages, such as `?gardasil`. For correct hyperlinking to help pages, the URL needs to be provided here and in the [DESCRIPTION](https://github.com/waldronlab/ProjectAsPackage/blob/master/DESCRIPTION) `URL:` line.

**To activate GitHub pages**, from your GitHub repo you need to click on "Settings" on the top toolbar, scroll down to "GitHub Pages", then change "None - Disable GitHub Pages" to "master branch /docs folder". You should now see the URL for your new web page here.  If you can't select this option, it's because you haven't yet pushed a master branch docs folder created by pkgdown to GitHub. 

See the result [here](http://waldronlab.io/ProjectAsPackage/).

## travis-CI for continuous integration

This GitHub site is set up to automatically build, check, and deploy
the pkgdown site to GitHub Pages with every commit. See the file
[.travis.yml] for a template and setup instructions. You will have to:

1. edit the [.travis.yml] file
2. edit the README.md file if you want to show a Travis badge on your GitHub site,
3. link your GitHub account to Travis-ci.org,
4. activate your GitHub repo on Travis: https://docs.travis-ci.com/user/deployment/pages/. The Travis site for this repo then appeared at https://docs.travis-ci.com/user/deployment/pages/
4. create a GitHub token at https://github.com/settings/tokens (for "scopes" choose "repo" and "admin:repo_hook")
5. enter this token as an environment value with name "GITHUB_TOKEN", "available to all branches", on travis-ci.org at https://travis-ci.org/github/waldronlab/ProjectAsPackage/settings
6. Create an initially empty gh-pages branch, where GitHub Pages will be deployed:
```git checkout --orphan gh-pages
git rm -rf .
git commit --allow-empty -m 'Initial gh-pages commit'
git push origin gh-pages
git checkout master
```


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

Chloe Mirzayi, Audrey Renson, Levi Waldron

CUNY Graduate School of Public Health and Health Policy<br/>
Institute for Implementation Science in Public Health
