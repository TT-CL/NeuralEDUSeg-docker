#!/bin/sh
# Build Docker image
if [ ! -d "repo" ]; then
  git clone --depth=1 --branch=main https://github.com/nttcslab-nlp/RSTParser_EMNLP22.git repo
  rm -rf ./repo/.git
fi

docker compose -f docker/docker-compose.yml build "$@"

