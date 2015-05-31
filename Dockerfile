FROM netflixoss/java:8
MAINTAINER Ruslan Pilin

ENV SBT_VERSION 0.13.8

ENV SCALA_VERSION 2.11.6

RUN mkdir -p /usr/local/bin && wget -P /usr/local/bin/ http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar && ls /usr/local/bin

COPY sbt /usr/local/bin/

# create an empty sbt project;
# then fetch all sbt jars from Maven repo so that your sbt will be ready to be used when you launch the image
COPY init-sbt.sh /tmp/

RUN cd /tmp  && ./init-sbt.sh  && rm -rf *
