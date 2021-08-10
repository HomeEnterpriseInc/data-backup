FROM alpine:3.14.1

RUN apk add --update --no-cache p7zip
RUN mkdir /backup
COPY backup.sh /backup/backup.sh

VOLUME /src
VOLUME /dest

WORKDIR /backup
RUN chmod +x ./backup.sh
RUN chmod 777 ./backup.sh
CMD ./backup.sh