FROM sonarqube:7.1

WORKDIR $SONARQUBE_HOME
COPY run.sh $SONARQUBE_HOME/bin/

ENV SONARQUBE_HOME /home/site/wwwroot
ENV SONARQUBE_INSTALL /opt/sonarqube

RUN mkdir -p "$SONARQUBE_HOME"

ENTRYPOINT ["./bin/run.sh"]