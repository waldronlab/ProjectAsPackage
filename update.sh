#!/bin/bash
# Use pkgdown to build a basic package website
Rscript --vanilla -e "pkgdown::build_site(lazy=TRUE)"
git add docs/
git stage docs/
git commit -m "update GitHub pages"
git push
