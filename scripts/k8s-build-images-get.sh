#/bin/bash

set -x

kube_image_repo="registry.k8s.io/build-image"

docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWD

# for baseimage in `cat k8s-build-images | grep -v ^$ | grep -v ^#`; do
#     echo ${baseimage}
    # docker pull ${kube_image_repo}/${baseimage}
    # docker tag ${kube_image_repo}/${baseimage} $DOCKERHUB_USERNAME/${baseimage}
    # docker push $DOCKERHUB_USERNAME/${baseimage}

#     docker pull --platform linux/arm64 ${kube_image_repo}/${baseimage}
#     docker tag ${kube_image_repo}/${baseimage} $DOCKERHUB_USERNAME/${baseimage}
#     docker push $DOCKERHUB_USERNAME/${baseimage}
# done

# docker pull --platform linux/amd64 registry.k8s.io/build-image/go-runner:v2.3.1-go1.21.9-bookworm.0
# docker tag registry.k8s.io/build-image/go-runner:v2.3.1-go1.21.9-bookworm.0 $DOCKERHUB_USERNAME/go-runner-amd64:v2.3.1-go1.21.9-bookworm.0
# docker push $DOCKERHUB_USERNAME/go-runner-amd64:v2.3.1-go1.21.9-bookworm.0

# sleep 2

# docker pull --platform linux/arm64 registry.k8s.io/build-image/go-runner:v2.3.1-go1.21.9-bookworm.0
# docker tag registry.k8s.io/build-image/go-runner:v2.3.1-go1.21.9-bookworm.0 $DOCKERHUB_USERNAME/go-runner-arm64:v2.3.1-go1.21.9-bookworm.0
# docker push $DOCKERHUB_USERNAME/go-runner-arm64:v2.3.1-go1.21.9-bookworm.0

# sleep 2

# docker pull --platform linux/amd64 registry.k8s.io/build-image/distroless-iptables:v0.4.7
# docker tag registry.k8s.io/build-image/distroless-iptables:v0.4.7 $DOCKERHUB_USERNAME/distroless-iptables-amd64:v0.4.7
# docker push $DOCKERHUB_USERNAME/distroless-iptables-amd64:v0.4.7

# sleep 2

# docker pull --platform linux/arm64 registry.k8s.io/build-image/distroless-iptables:v0.4.7
# docker tag registry.k8s.io/build-image/distroless-iptables:v0.4.7 $DOCKERHUB_USERNAME/distroless-iptables-arm64:v0.4.7
# docker push $DOCKERHUB_USERNAME/distroless-iptables-arm64:v0.4.7

docker pull --platform linux/amd64 registry.k8s.io/build-image/setcap:bookworm-v1.0.2
docker tag registry.k8s.io/build-image/setcap:bookworm-v1.0.2 $DOCKERHUB_USERNAME/setcap-amd64:bookworm-v1.0.2
docker push $DOCKERHUB_USERNAME/setcap-amd64:bookworm-v1.0.2

sleep 2

docker pull --platform linux/arm64 registry.k8s.io/build-image/setcap:bookworm-v1.0.2
docker tag registry.k8s.io/build-image/setcap:bookworm-v1.0.2 $DOCKERHUB_USERNAME/setcap-arm64:bookworm-v1.0.2
docker push $DOCKERHUB_USERNAME/setcap-arm64:bookworm-v1.0.2



