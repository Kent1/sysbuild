FROM httpd:2.4
COPY ./webapp/dist /usr/local/apache2/htdocs/
