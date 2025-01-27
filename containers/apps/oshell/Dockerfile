#---------------------------------------------------------------
# PodShell Alpine Installation
# Araf Karsh Hamid, (c) Copyright 2025
#
# Version 0.01
#---------------------------------------------------------------
# Base Version
FROM arafkarsh/alpaquita:musl

# Metadata
LABEL maintainer="Araf Karsh Hamid <araf.karsh@gmail.com>" \
      description="This Dockerfile creates the OShell image with few utilities." \
      version="1.0" \
      org.opencontainers.image.authors="Araf Karsh Hamid <araf.karsh@gmail.com>" \
      org.opencontainers.image.version="1.0" \
      org.opencontainers.image.licenses="Apache 2"

RUN mkdir -p /home/ozazo/bin
COPY --chown=ozazo:dev gb /home/ozazo/bin

# Set permissions for directories
RUN chown -R ozazo:dev /home/ozazo/bin

WORKDIR /home/ozazo
ENV HOME=/home/ozazo

# Enable User root at this Level
USER ozazo

ENTRYPOINT ["/home/ozazo/bin/gb"] 
