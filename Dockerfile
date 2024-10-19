FROM nginx:alpine

WORKDIR /etc/nginx
COPY ./nginx.conf ./conf.d/default.conf
EXPOSE 80
LABEL org.opencontainers.image.source="https://github.com/n1ccc/docker-cors-unraid-proxy"
ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
