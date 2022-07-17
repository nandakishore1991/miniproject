FROM fedora
LABEL Name=jack ,email=jack123
Run yum install httpd -y
COPY index.html /var/www/html
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
