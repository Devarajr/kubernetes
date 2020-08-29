FROM centos:7
MAINTAINER devops
RUN yum -y install nc
COPY initscript.sh /opt
RUN chmod a+x /opt/initscript.sh
CMD ["/opt/initscript.sh"]
