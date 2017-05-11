FROM buildpack-deps:jessie
MAINTAINER Lucid Programmer <lucidprogrammer@hotmail.com>
RUN curl "https://install.meteor.com/?release=1.4.4.1" | /bin/sh
ENV dev_bundle=1.4.4_1
ENV PATH=$PATH:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/bin:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/mongodb/bin \
    NODE_PATH=/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/lib/node_modules:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/server-lib/node_modules\
    METEOR_ALLOW_SUPERUSER=true
RUN mkdir -p /data/meteor_uploads
