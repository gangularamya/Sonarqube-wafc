FROM sonarqube:7.1

COPY run.sh $SONARQUBE_HOME/bin/

ENV SONARQUBE_HOME /home/site/wwwroot
ENV SONARQUBE_INSTALL /opt/sonarqube

RUN mkdir -p "$SONARQUBE_HOME"
WORKDIR $SONARQUBE_HOME

ENTRYPOINT ["/opt/sonarqube/bin/run.sh"]