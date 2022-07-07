FROM alpine/node:latest

RUN apk add zip --update
COPY ./entrypoint.sh /app/entrypoint.sh
RUN cd /app && chmod +x entrypoint.sh
RUN npm install
ENTRYPOINT ["/app/entrypoint.sh"]