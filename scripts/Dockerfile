FROM centos:centos8.3.2011
RUN yum install gcc make python36-devel openssl-devel -y && \
    pip3 install wheel && \
    pip3 wheel -r r.txt
