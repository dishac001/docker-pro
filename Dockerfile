FROM ubuntu: 18.04
MAINTAINER disha chaudhari disha<dishac053@gmail.com›
RUN apt update && \
apt install -y iputils-ping iproute2
RUN apt install -y nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
