FROM circleci/rust

EXPOSE 8000

WORKDIR /app

COPY hello_world/target/debug/hello_world /app

CMD ["/app/hello_world"]
