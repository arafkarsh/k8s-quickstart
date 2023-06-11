#########################################
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# Version 0.2
#
#########################################
# Alpine Base Version
FROM alpine:latest

LABEL author="Araf Karsh Hamid <araf.karsh@metamagic.in>"

RUN apk update && apk add bash && apk add vim

# Install SSL Certificates
RUN apk add ca-certificates && rm -rf /var/cache/apk/*

# Create Software Directories
RUN mkdir -p /Softwares
RUN chmod -R 750 /Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash arivu

COPY --chown=arivu:arivu .bashrc /home/arivu/

RUN chown arivu:arivu /Softwares
RUN chown arivu:arivu /home/arivu/

WORKDIR /home/arivu

# Run the Container as arivu only for SW Containers
#USER arivu

CMD /bin/bash
