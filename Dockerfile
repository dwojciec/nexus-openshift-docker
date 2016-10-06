FROM sonatype/nexus:2.14.0-01

MAINTAINER Didier Wojciechowski <dwojciec@redhat.com>

ENV SONATYPE_WORK /nexus-data

USER root
COPY conf/nexus.xml ${SONATYPE_WORK}/conf/nexus.xml
RUN chown -R nexus ${SONATYPE_WORK} && \
    chmod -R ugo+rw ${SONATYPE_WORK}

USER nexus
