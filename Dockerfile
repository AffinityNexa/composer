FROM alpine
RUN apk add --no-cache composer php-dom # php-tokenizer
ENV COMPOSER_IGNORE_PLATFORM_REQS=1
WORKDIR /app
ENTRYPOINT ["composer"]
CMD ["install"]
