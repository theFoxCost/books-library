FROM  nginx:alpine
RUN apt-get update && apt install git -y
COPY BOOKS_LIBRARY /var/www/html/
EXPOSE 106/tcp
