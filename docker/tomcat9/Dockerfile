#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2017
#
# Desire3D Micro Services Containers - Tomcat
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/java:8

LABEL author="Araf Karsh Hamid <araf.karsh@metamagic.in>"

RUN mkdir /Softwares/tomcat/

# Copy Tomcat (Install)
COPY --chown=arivu:arivu tc9.0.52 /Softwares/tomcat/
RUN chmod 750 /Softwares/tomcat/bin/*

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
ENTRYPOINT ["/Softwares/tomcat/bin/catalina.sh", "run"]

