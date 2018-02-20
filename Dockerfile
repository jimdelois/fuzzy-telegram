FROM bryanlatten/docker-php:7.1-alpine

COPY . /app

WORKDIR /app
RUN composer install --no-dev

# Although the upstream defines this, AWS EB actually
# requires that it is explicitly set in the upload.
EXPOSE 8080
