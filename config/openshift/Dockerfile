FROM centos:centos7

RUN yum install -y epel-release && yum clean all
RUN yum install -y \
  ansible \
  jq \
  && yum clean all
ADD run.sh /run.sh
RUN /bin/echo "/bin/echo $CONTAINER_NAME" > /whoami.sh
RUN chmod +x /*.sh
USER root:root
ENTRYPOINT ["/run.sh"]

