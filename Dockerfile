FROM mongo:4.4

COPY ./init /docker-entrypoint-initdb.d

USER 1001

EXPOSE 27017

HEALTHCHECK --interval=5m --timeout=3s \
  CMD /bin/sh -i -c mongo 127.0.0.1:27017/$MONGO_INITDB_DATABASE --eval "db.runCommand({ ping: 1})" || exit 1
  

CMD ["mongod", "--port", "27017", "--replSet", "rs0"]
