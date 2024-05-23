#/bin/bash

set -x

kube_image_repo="registry.k8s.io/build-image"

docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWD

for baseimage in `cat k8s-build-images | grep -v ^$ | grep -v ^#`; do
    echo ${baseimage}
    # docker pull ${kube_image_repo}/${baseimage}
    # docker tag ${kube_image_repo}/${baseimage} $DOCKERHUB_USERNAME/${baseimage}
    # docker push $DOCKERHUB_USERNAME/${baseimage}

    docker pull --platform linux/amd64 ${kube_image_repo}/${baseimage}
    docker tag ${kube_image_repo}/${baseimage} $DOCKERHUB_USERNAME/${baseimage}-amd64
    docker push $DOCKERHUB_USERNAME/${baseimage}-amd64
done
