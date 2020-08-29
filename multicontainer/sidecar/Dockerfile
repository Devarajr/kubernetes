FROM centos:7
MAINTAINER DEVOPS
RUN yum -y install curl unzip cronie
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \
&& unzip awscli-bundle.zip 
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN mkdir /root/.aws /data
COPY config credentials /root/.aws/
COPY script.sh /opt/
RUN echo "*/1 *  *  *  * aws s3 sync s3://kubemedia /data" >> /var/spool/cron/root
CMD ["./opt/script.sh"]
