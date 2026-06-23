FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates

COPY . /app

RUN chmod +x /app/SekaServer.x86_64

ENV PORT=10000

EXPOSE 10000

CMD ["/app/SekaServer.x86_64", "-batchmode", "-nographics"]