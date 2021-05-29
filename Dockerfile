#FROM circleci/rust
FROM alpine:latest

EXPOSE 8000

WORKDIR /app

RUN apk add file

COPY hello_world/target/debug/hello_world /app

RUN file /app/hello_world

CMD ["/app/hello_world"]
