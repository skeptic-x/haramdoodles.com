#!/bin/bash

# cleanup
rm -rf docs
mkdir docs

# generate site 
gssg ---domain "http://s2nas.local:8080" --url "https://haramdoodles.com" --dest docs
# echo "<html><body>Under Construction`date`</body></html>" > docs/index.html

# insert CNAME
echo "haramdoodles.com" > docs/CNAME

# reset history
rm -rf .git
git init

# commit & push
git add .
git commit -m "Updated: `date`"
git remote add origin git@github.com:skeptic-x/haramdoodles.com.git
git push -u --force origin main



# brew install wget
# sudo npm install -g ghost-static-site-generator