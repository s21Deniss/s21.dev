#!/bin/bash

npm run lint
npm run build

cd docs
echo 's21.dev' > CNAME
cd -

git add -A
git commit -m 'deploy'
git push