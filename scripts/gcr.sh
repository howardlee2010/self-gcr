#/bin/bash
# 
set -x

kube_image_repo=gcr.io
docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWD
echo "test"
docker run --privileged --rm tonistiigi/binfmt --install all
# docker buildx build --platform linux/arm64 -t liupeng0518/pip:latest --push .

for list in `cat k8s.list|grep -v ^$|grep -v ^#`; do
  rel_list=`echo $list | sed 's/\//./g'`
  docker pull $kube_image_repo/$list
  docker tag $kube_image_repo/$list $DOCKERHUB_USERNAME/$rel_list
  docker push $DOCKERHUB_USERNAME/$rel_list
done
