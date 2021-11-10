FROM centos:centos8.3.2011
COPY r.txt /root/
RUN yum install gcc make python36-devel libffi-devel openssl-devel -y && \
    pip3 install wheel && \
    cd /root/ && \
    pip3 wheel -r r.txt
