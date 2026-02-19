FROM alpine
RUN apk add --no-cache composer npm \
	php-dom php-fileinfo php-pdo php-session php-tokenizer
WORKDIR /app
ENV COMPOSER_IGNORE_PLATFORM_REQS=1
ENV HOME=/tmp
CMD composer i && npm ci
