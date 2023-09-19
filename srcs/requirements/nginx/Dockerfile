ARG ALPINE_VERSION=3.17.2

FROM alpine:${ALPINE_VERSION}
WORKDIR /app

#NGINX
RUN apk add nginx
RUN nginx -v
#SSL (https)
RUN mkdir -p /etc/nginx/ssl
RUN apk add openssl
RUN openssl version
RUN openssl req -new \
-x509 -nodes -keyout inception.key \
-out inception.csr \
-subj "/C=US/ST=Utah/L=Lehi/O=Your Company, Inc./OU=IT/CN=yourdomain.com"
RUN ls -l
#CONFIG
RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf
RUN chmod 755 /var/run/
#CHMOD
#RUN chmod 755 /var/www/html
#RUN chown -R www-data:www-data /var/www/html
#START NGINX LEVEL 1
CMD [ "nginx", "-g", "daemon off;"]
