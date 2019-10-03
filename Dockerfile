# Use the nginx-parent image as base
FROM nginx:1.17.4
EXPOSE 8080
LABEL io.openshift.expose-services="8080:http"
RUN sed -i "s/listen 80/listen 8088/g" /etc/nginx/nginx.conf
RUN chgrp -R 0 /var/cache/nginx/client_temp && chmod -R g=u /var/cache/nginx/client_temp
#RUN chgrp -R 0 /var/opt/rh/rh-nginx18 && chmod -R g=u /var/opt/rh/rh-nginx18
