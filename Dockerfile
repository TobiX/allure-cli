FROM adoptopenjdk:11-jre-hotspot
MAINTAINER Tobias Gruetzmacher "tobias-docker@23.gs"

ARG BUILD_DATE
ARG VCS_REF

LABEL \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.license="MIT" \
  org.label-schema.name="Docker Allure commandline" \
  org.label-schema.url="https://docs.qameta.io/allure/" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/Dosage-Bot/allure-cli"

COPY bintray.gpg /tmp/

# renovate: datasource=maven depName=io.qameta.allure:allure-commandline
ARG ALLURE_VERSION=2.13.9
ARG REPO_BASE=https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/

RUN set -x && tar=allure-commandline-$ALLURE_VERSION.tgz \
	&& url=$REPO_BASE$ALLURE_VERSION/$tar \
	&& curl -O $url -O $url.asc \
	&& gpgv --keyring /tmp/bintray.gpg $tar.asc $tar \
	&& mkdir -p /opt/allure \
	&& tar xvf $tar -C /opt/allure --strip-components=1 \
	&& rm $tar* /tmp/*.gpg \
	&& ln -s /opt/allure/bin/allure /usr/bin

WORKDIR /work
ENTRYPOINT ["/opt/allure/bin/allure"]
