FROM ubuntu
WORKDIR /app
COPY compile.sh /app
RUN apt-get update && \
  apt-get install -y cmake make gcc g++ git && \
  ./compile.sh -m Release -t AUTO
WORKDIR /app/cuberite/build-cuberite/Server
CMD ./Cuberite
