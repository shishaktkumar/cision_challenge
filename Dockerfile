FROM alpine:3.14 as nginx-builder
RUN apk add --no-cache nginx
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
