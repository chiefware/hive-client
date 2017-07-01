FROM centos:7
ENV container docker
RUN yum -y install wget
RUN wget -O /etc.yum.repo.d/hdp.repo http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.1.0/hdp.repo 
RUN yum -y install hive-client
CMD ["/usr/sbin/init"]

