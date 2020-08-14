FROM alpine
ENV KEYS_PATH "/data"
WORKDIR /usr/src/app
RUN apk update && \
      apk add --no-cache openssh-keygen && \
      adduser -u 1000 -H -D theia
      
COPY keygen.sh /app/keygen.sh
CMD ["/app/keygen.sh"]