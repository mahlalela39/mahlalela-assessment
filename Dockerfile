#Mariadb image repo
FROM mariadb:latest

#Assign value for BRUCE variable
ARG BRUCE=WAYNE

#Switch users 
USER root

#Add value of BRUCE to BATCAVE file
RUN echo "$BRUCE" > /BATCAVE

#Image port
EXPOSE 3307
