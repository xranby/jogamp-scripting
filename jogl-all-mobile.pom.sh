#!/bin/sh

if [ $# -ne 1 ]
then
  echo "usage: version" 1>&2
  exit 1
fi

VERSION="$1"
shift

cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <!--                                                                 -->
  <!-- Auto generated by jogl-all-mobile.pom.sh, do not edit directly! -->
  <!--                                                                 -->

  <modelVersion>4.0.0</modelVersion>
  <groupId>org.jogamp.jogl</groupId>
  <artifactId>jogl-all-mobile</artifactId>
  <version>${VERSION}</version>
  <packaging>jar</packaging>
  <name>JOGL</name>
  <description>Java™ Binding for the OpenGL® API (Mobile)</description>
  <url>http://jogamp.org/jogl/www/</url>

EOF

cat jogl.pom.in || exit 1
cat <<EOF
</project>
EOF
