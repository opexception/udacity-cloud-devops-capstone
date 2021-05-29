#FROM circleci/rust
FROM alpine:latest

EXPOSE 8000

WORKDIR /app

COPY hello_world/target/debug/hello_world /app

RUN sudo chmod +x /app/hello_world

CMD ["/app/hello_world"]
