FROM debian:bullseye-slim
CMD ["./demo"]
WORKDIR /opt/wpp
EXPOSE 5000
RUN apt-get update
RUN apt-get install -y build-essential
COPY . .
RUN make

