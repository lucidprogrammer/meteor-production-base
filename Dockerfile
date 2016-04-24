FROM buildpack-deps:jessie
MAINTAINER Lucid Programmer <lucidprogrammer@hotmail.com>
RUN curl https://install.meteor.com | /bin/sh
ENV dev_bundle=1.3.2_4
ENV PATH=$PATH:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/bin \
    NODE_PATH=/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/lib/node_modules:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/server-lib/node_modules
RUN npm install -g forever && \
    rm -rf /root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/mongodb && \
    npm cache clear
