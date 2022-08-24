#!/usr/bin/env sh

set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

git init
git add -A
git commit -m 'deploy'

cd -