FROM buildpack-deps:jessie
MAINTAINER Lucid Programmer <lucidprogrammer@hotmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y locales && \
	echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8 && \
    apt-get install -y xvfb && \
    Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &
ENV LC_ALL en_US.UTF-8
RUN curl "https://install.meteor.com/?release=1.4.4.1" | /bin/sh
ENV dev_bundle=1.4.4_1
ENV PATH=$PATH:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/bin:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/mongodb/bin \
    NODE_PATH=/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/lib/node_modules:/root/.meteor/packages/meteor-tool/$dev_bundle/mt-os.linux.x86_64/dev_bundle/server-lib/node_modules\
    METEOR_ALLOW_SUPERUSER=true
    DISPLAY=':99.0'
RUN mkdir -p /data/meteor_uploads
