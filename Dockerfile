FROM alpine:latest

EXPOSE 8000

#WORKDIR /app

COPY hello_world/target/x86_64-unknown-linux-gnu/release/hello_world /app

CMD ["/app/hello_world"]
