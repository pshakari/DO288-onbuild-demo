# Use the nginx-parent image as base
FROM nginx:latest
EXPOSE 8080
LABEL io.openshift.expose-services="8080:http"
RUN sed -i "s/listen 80/listen 8088/g" /etc/nginx.conf
RUN chgrp -R 0 /var/opt/rh/rh-nginx18 && chmod -R g=u /var/opt/rh/rh-nginx18
