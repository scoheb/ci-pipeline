FROM openshift/jenkins-slave-base-centos7
RUN yum install -y epel-release \
  ansible \
  jq \
  && yum clean all

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz && \
    tar --strip-components=1 -xvzf docker-17.04.0-ce.tgz -C /usr/local/bin

RUN ls -l /usr/local/bin
