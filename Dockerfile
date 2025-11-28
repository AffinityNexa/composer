FROM alpine
RUN apk add --no-cache composer
WORKDIR /app
ENTRYPOINT ["composer"]
