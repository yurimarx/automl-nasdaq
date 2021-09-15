ARG IMAGE=intersystemsdc/iris-community:2020.4.0.547.0-zpm
ARG IMAGE=intersystemsdc/iris-community
FROM $IMAGE

USER root
WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

USER ${ISC_PACKAGE_MGRUSER}

# copy files
COPY  Installer.cls .
COPY src src
COPY dsw dsw
COPY  module.xml .  
COPY iris.script /tmp/iris.script
ADD https://ymservices.tech/isc/NASDAQ_100_Data_From_2010.csv /opt/csv/nasdaq.csv
USER root
RUN chmod 0777 -R /opt/csv/
USER ${ISC_PACKAGE_MGRUSER}


# run iris and script
RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly

