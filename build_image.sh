#!/bin/sh

GRADLE_VERSION=${1:-5.0}

docker build \
  --build-arg GRADLE_VERSION=${GRADLE_VERSION} \
  -t honomoa/jenkins-gradle:${GRADLE_VERSION}-alpine \
  .
