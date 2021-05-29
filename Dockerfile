FROM circleci/rust

EXPOSE 8000

WORKDIR /app

COPY hello_world/target/debug/hello_world /app

#RUN chmod +x /app/hello_world

CMD ["/app/hello_world"]
