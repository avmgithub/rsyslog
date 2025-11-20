FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER Freddie Mendoza
RUN yum install -y rsyslog procps net-tools; yum clean all
COPY ./rsyslog.conf /etc/rsyslog.conf
# WORKDIR /app
# RUN python3 -m pip install -r requirements.txt
# COPY ./src /app/src
EXPOSE 514/udp
#ENTRYPOINT ["python3"]
#CMD ["src/main.py"]
ENTRYPOINT ["rsyslogd", "-n"]
