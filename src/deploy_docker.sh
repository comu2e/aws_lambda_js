# Dockerfileからイメージの作成
 docker build -t deploypackage src/. -f .docker/Dockerfile
# 実行
docker run --rm -v "$PWD":/var/task deploypackage:latest