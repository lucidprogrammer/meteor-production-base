FROM buildpack-deps:jessie
MAINTAINER Lucid Programmer <lucidprogrammer@hotmail.com>
RUN curl https://install.meteor.com | /bin/sh
ENV dev_bundle=1.3.0_3
ENV PATH=$PATH:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/bin
ENV NODE_PATH=/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/lib/node_modules:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/server-lib/node_modules
