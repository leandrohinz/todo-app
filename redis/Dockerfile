# syntax=docker/dockerfile:1
# Build the application from source
FROM redis

EXPOSE 6379

COPY redis.conf /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]



COPY . .

