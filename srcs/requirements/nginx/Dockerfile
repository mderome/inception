FROM debian:buster

RUN apt update -y && apt install nginx -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl/ && openssl req -newkey rsa:2048 -x509 -days 365 -nodes -out /etc/nginx/ssl/local.crt -keyout /etc/nginx/ssl/local.key -subj "/C=FR/ST=France/L=Paris/O=Me/OU=42Paris/CN=localhost/emailAddress=mderome@student.42.fr"
COPY ./conf/nginx_config /etc/nginx/sites-available/default

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]