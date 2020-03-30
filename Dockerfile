FROM centos:latest
MAINTAINER Teja
WORKDIR /opt
RUN yum install -y java-1.8.0-openjdk
RUN useradd java
RUN mkdir -p /opt/docker/files
RUN touch f1 f2 f3
RUN echo "Hello Containers" >> docker/f2
COPY file /opt/docker/files
CMD ["/bin/bash"]
