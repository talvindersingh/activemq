#Use jdk as base image
FROM openjdk:8-jre-alpine

RUN wget -O activemq.tar.gz http://archive.apache.org/dist/activemq/5.15.6/apache-activemq-5.15.6-bin.tar.gz 
RUN tar -xzf activemq.tar.gz 

# Start up the activemq server
CMD ["apache-activemq-5.15.6/bin/activemq", "console"]
