#!/bin/bash

# abort on errors
set -e

# build
echo Linting..
npm run lint
echo Audit
npm run audit
echo Building. this may take a minute...
npm run build

cd docs
echo 's21.dev' > CNAME
cd -

# deploy
echo Deploying..
git add -A
git commit -m 'deploy'
git push -f https://github.com/s21Deniss/s21Deniss.github.io.git master