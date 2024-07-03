FROM nginx
RUN mkdir /nbprocect
COPY HelloWeb nbprocect
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY jsfexercise1master.jar jsfexercise1master.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar jsfexercise1master.jar
CMD [ "glassfish","HelloWeb" ]
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar jsfexercise1master.jar
