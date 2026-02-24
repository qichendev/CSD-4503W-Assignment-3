FROM nginx:alpine

COPY index.html style.css image.jpg /usr/share/nginx/html/

RUN sed -i 's/listen       80;/listen       8085;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8085

CMD ["nginx", "-g", "daemon off;"]
