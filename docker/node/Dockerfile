#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# Version 0.1
#################################################################
# Base Version
FROM mhart/alpine-node

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN apk add bash

# Create Software Directories
RUN mkdir -p /Softwares
RUN chmod -R 750 /Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash arivu

COPY --chown=arivu:arivu .bashrc /home/arivu/

RUN chown arivu:arivu /Softwares
RUN chown arivu:arivu /home/arivu/

WORKDIR /home/arivu

RUN apk update && apk add wget && apk add curl && apk add nano
RUN npm install -g newman

# Run the Container as arivu only for SW Containers
USER arivu

ENTRYPOINT /bin/bash
