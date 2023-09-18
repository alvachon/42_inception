ARG ALPINE_VERSION=3.17.2

FROM alpine:${ALPINE_VERSION}

WORKDIR /app
RUN apk add nginx
RUN nginx -v
RUN mkdir -p SSL_DIR
RUN apk add openssl
RUN openssl version
RUN openssl req -new \
-x509 -nodes -keyout yourdomain.key \
-out yourdomain.csr \
-subj "/C=US/ST=Utah/L=Lehi/O=Your Company, Inc./OU=IT/CN=yourdomain.com"
RUN ls -l
CMD [ "nginx", "-v" ]
