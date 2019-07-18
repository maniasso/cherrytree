# Pull base image.
#FROM jlesage/baseimage-gui:debian-8
FROM jlesage/baseimage-gui:alpine-3.8

COPY repositories /etc/apk/
# Install xterm.
#RUN apt-get -y update; apt-get -y install xvfb; apt-get install -y cherrytree 
RUN apk update; apk add dbus; apk add cherrytree; apk add cherrytree; apk add cherrytree; apk add cherrytree; apk add p7zip

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV APP_NAME="cherrytree"
