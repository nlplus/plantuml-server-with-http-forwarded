FROM plantuml/plantuml-server:jetty

RUN echo "--module=http-forwarded" > /var/lib/jetty/start.d/http-forwarded.ini

RUN cd /var/lib/jetty/webapps && unzip ROOT.war -d ./ROOT && sed -i -e"s/{imgurl}/{svgurl}.svg/" ./ROOT/index.jsp
