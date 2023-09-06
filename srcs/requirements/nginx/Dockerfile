FROM debian

# Install dependencies
RUN apt -y update && apt -y upgrade && apt -y install nginx openssl

# DEV DEPENCENCIES
RUN apt -y install systemctl nano

# Create folders for ssl settings
RUN mkdir -p /etc/nginx/ssl

# Request new ssl key
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/lmuzio.crt \
       -keyout /etc/nginx/ssl/lmuzio.key \
       -subj "/C=NL/ST=Amsterdam/L=Amsterdam/O=Codam/OU=lmuzio/CN=lmuzio/"

# Copy config file into container
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 443
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]