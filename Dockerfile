FROM nginx:latest
RUN addgroup -S nonroot && adduser -S nonroot -G nonroot
USER nonroot
COPY index.html /usr/share/nginx/html
COPY logoimage.png /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]