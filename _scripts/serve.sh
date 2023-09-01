cd $(dirname "$0")

CONTAINER_NAME='hd-github-page'
IMAGE='bretfisher/jekyll-serve:stable-20230715-2119a31'
PORT=4000

if docker container inspect $CONTAINER_NAME; then
    docker start -a $CONTAINER_NAME
else
    docker run -p "$PORT:4000" -v "$PWD/..:/site" --name $CONTAINER_NAME $IMAGE
fi
