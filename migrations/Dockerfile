FROM migrate/migrate

RUN apk add --no-cache postgresql-client bash

WORKDIR /migrations
COPY . .
RUN chmod +x start.sh

ENTRYPOINT ./start.sh
