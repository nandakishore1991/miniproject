FROM fedora
LABEL Name=Kishore ,email=kishore9691@gmail.com
Run yum install httpd -y
COPY * /var/www/html/
CMD ["httpd","-D","FOREGROUND"]
WORKDIR /var/www/html
EXPOSE 80
