FROM httpd:latest
RUN apt-get update 
RUN apt-get install unzip
ADD minimalista-templates.zip /template
RUN cd /template && unzip minimalista-templates.zip && rm minimalista-templates.zip
COPY */template /usr/local/apache2/htdocs
EXPOSE 80
