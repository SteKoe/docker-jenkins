FROM jenkins

USER root
RUN mkdir -p /var/jenkins_backup

USER jenkins

ADD plugins.txt /usr/share/jenkins/plugins.txt
ADD ./init-scripts  /usr/share/jenkins/ref/init.groovy.d/

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt