FROM centos:centos7
RUN yum install -y epel-release && yum clean all
RUN yum install -y \
  ansible \
  jq \
  && yum clean all
ADD run.sh /run.sh
RUN chmod +x /*.sh
USER 1001
ENTRYPOINT ["/run.sh"]
