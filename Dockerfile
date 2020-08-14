FROM alpine:3
ENV KEYS_PATH "/data"
ENV USER "1000"
WORKDIR /usr/src/app
RUN apk update && \
      apk add --no-cache openssh-keygen && \
      adduser -u 1000 -H -D app
      
COPY keygen.sh /app/keygen.sh
CMD ["/app/keygen.sh"]