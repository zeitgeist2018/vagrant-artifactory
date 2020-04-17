version: '3'
services:
  jenkins:
    container_name: jenkins-master
    image: jenkins-master
    hostname: localhost
    restart: unless-stopped
    build:
      context: ./master
    ports:
      - "{{ .JENKINS_PORT }}:8080"
    networks:
      - net
networks:
  net: