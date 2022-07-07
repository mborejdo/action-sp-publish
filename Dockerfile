FROM node:current-alpine3.15

RUN apk add zip --update
COPY ./* /app/
RUN cd /app && chmod +x entrypoint.sh

WORKDIR /app
RUN npm install
ENTRYPOINT ["/app/entrypoint.sh"]