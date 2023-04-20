#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-1idxex6e7sabt/ExoticCarsRaceApp.war /usr/local/tomcat9/webapps/ExoticCarsRaceApp.war


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps