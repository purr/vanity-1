FROM rust:latest

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/purr/vanity .
RUN cargo build --release

ENTRYPOINT ["./target/release/vanity"]
CMD ["--help"] 