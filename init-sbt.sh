#!/bin/sh
#
# a simple test for sbt
#
# @see http://stackoverflow.com/a/12781664/714426
#

echo "object Main {}" > Main.scala

cat <<EOF
 EOF | sbt
set name := "SbtTest"
set version := "1.0"
set scalaVersion := "$SCALA_VERSION"
session save
compile
exit
EOF

sbt about
