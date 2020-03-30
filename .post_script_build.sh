#!/bin/bash

# This Travis post_script runs after a successful build and updates GitHub Pages.
# It assumes GitHub Pages is using the docs/ folder of the master branch, but you
# can change to checkout and push to the gh-pages branch if you prefer to keep
# website documentation separate from the master branch.

GH_REPO="@github.com/waldronlab/ProjectAsPackage.git"
FULL_REPO="https://$GH_TOKEN$GH_REPO"



pwd
Rscript -e "pkgdown::build_site(lazy=TRUE)"

git init
git config user.name "lwaldron-travis"
git config user.email "travis"
git branch newmap
git checkout newmap
git stage docs/
git commit -m "update GitHub pages"
git push --force --quiet $FULL_REPO master:newmap
