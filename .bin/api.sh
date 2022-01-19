docker run --rm -e DOCKER_LAMBDA_STAY_OPEN=1 -p 9001:9001 -v \
"$PWD":/var/task lambci/lambda:nodejs12.x index.handler
