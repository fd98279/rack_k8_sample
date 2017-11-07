docker build -t sampatp/node-hello .
#docker rm sampatp-node-hello >> /dev/null 2>&1
./stop.sh
#docker run -p 49160:9000 --name sampatp-node-hello -d sampatp/node-hello
docker tag sampatp/node-hello fd98279/racktest
kubectl run hello-node --image=fd98279/racktest --port=9000
kubectl expose deployment hello-node --type=LoadBalancer

