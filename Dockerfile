FROM centos:7
ENV container docker
RUN yum -y install wget which java-1.8.0-openjdk-devel
RUN wget -O /etc/yum.repos.d/hdp.repo http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.1.0/hdp.repo 
RUN yum -y remove wget
RUN yum -y install hive & yum -y update *
RUN yum clean all
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-7.b12.el7_3.x86_64
CMD ["/usr/sbin/init"]

