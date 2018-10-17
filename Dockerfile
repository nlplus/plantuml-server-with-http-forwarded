FROM plantuml/plantuml-server:jetty

RUN echo "--module=http-forwarded" > /var/lib/jetty/start.d/http-forwarded.ini
