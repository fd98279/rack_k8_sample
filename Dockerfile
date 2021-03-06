FROM    centos:centos6

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

COPY . /src
RUN rm -rf /src/node_modules

RUN cd /src; npm install

EXPOSE 9000  
CMD ["node", "/src/server.js"]
