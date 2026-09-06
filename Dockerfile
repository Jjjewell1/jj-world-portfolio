FROM nginx:alpine
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY three.min.js /usr/share/nginx/html/three.min.js
COPY README.md /usr/share/nginx/html/README.md
EXPOSE 3000
