FROM nginx
EXPOSE 80
EXPOSE 3000
VOLUME /var/log/nginx
VOLUME /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx", "-g", "daemon off;"]