FROM alpine
WORKDIR /app
COPY compile.sh /app
RUN apk add cmake make gcc g++ git && \
  ./compile.sh -m Release -t AUTO
CMD Cuberite