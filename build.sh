#!/usr/bin/env sh

# abort on errors
set -e

# build
npx honkit build

# navigate into the build output directory
cd _book

# if you are deploying to a custom domain
echo '02h.shawnd.xyz' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:shawnduong/02h.git main:gh-pages

cd -
