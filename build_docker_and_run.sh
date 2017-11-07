docker build -t sampatp/node-hello .
#docker rm sampatp-node-hello >> /dev/null 2>&1
./stop.sh
docker run -p 49160:9000 --name sampatp-node-hello -d sampatp/node-hello
