FROM mongo:4.4

COPY ./init /docker-entrypoint-initdb.d

USER 1001

EXPOSE 27017

CMD ["mongod", "--port", "27017", "--replSet", "rplbanana"]