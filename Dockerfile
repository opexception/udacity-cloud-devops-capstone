#FROM circleci/rust
FROM alpine:latest

EXPOSE 8000

WORKDIR /app

RUN apk add file

COPY ~/project/hello_world/target/x86_64-unknown-linux-gnu/release/hello_world /app

RUN file /app/hello_world

CMD ["/app/hello_world"]
