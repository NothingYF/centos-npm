# Version 1.0.1

FROM nothingdocker/centos-node
#RUN yum install -y make gcc gcc-c++
#RUN npm install -g node-gyp
RUN npm install -g --unsafe-perm sinopia
COPY config.yaml ~/.config/sinopia/config.yaml
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/init"]
