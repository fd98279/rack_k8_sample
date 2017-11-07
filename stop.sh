#docker stop  sampatp-node-hello >> /dev/null 2>&1
#docker rm  sampatp-node-hello >> /dev/null 2>&1
kubectl delete deployment hello-node
kubectl delete service hello-node
