FROM debian:buster

# Install dependencies
RUN apt-get -y update
RUN apt-get -y install nginx openssl

# Create folders for ssl settings
RUN mkdir -p /etc/nginx/ssl

# Request new ssl key
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/lmuzio.crt \
       -keyout /etc/nginx/ssl/lmuzio.key \
       -subj "/C=NL/ST=Amsterdam/L=Amsterdam/O=Codam/OU=lmuzio/CN=lmuzio/"

# Copy config file into container
COPY config/default.conf /etc/nginx/conf.d/default.conf

# Expose port 443
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]