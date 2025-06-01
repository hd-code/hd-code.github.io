cd "$(dirname "$0")"

CONTAINER_NAME='hd-github-pages'
IMAGE='bretfisher/jekyll-serve:stable-20240615-2119a31'
PORT=4000

if docker container inspect $CONTAINER_NAME; then
    docker start -a $CONTAINER_NAME
else
    docker run -p "$PORT:4000" -v "$PWD/..:/site" --name $CONTAINER_NAME $IMAGE
fi
