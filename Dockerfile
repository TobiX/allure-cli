FROM adoptopenjdk:16-jre-hotspot
MAINTAINER Tobias Gruetzmacher "tobias-docker@23.gs"

# renovate: datasource=maven depName=io.qameta.allure:allure-commandline
ARG ALLURE_VERSION=2.17.2
ARG REPO_BASE=https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/

RUN set -x && tar=allure-commandline-$ALLURE_VERSION.tgz \
	&& url=$REPO_BASE$ALLURE_VERSION/$tar \
	&& curl -O $url \
	&& mkdir -p /opt/allure \
	&& tar xvf $tar -C /opt/allure --strip-components=1 \
	&& rm *.tgz \
	&& ln -s /opt/allure/bin/allure /usr/bin

WORKDIR /work
ENTRYPOINT ["/opt/allure/bin/allure"]
