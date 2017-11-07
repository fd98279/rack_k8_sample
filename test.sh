export XPORT=`kubectl get services | grep hello-node | cut -d ':' -f 2 | cut -d '/' -f 1`
echo -e "\nBegin test"
echo -e "\nListing all documents\n"
curl http://localhost:${XPORT}/my-documents
echo -e "\nPOST document1\n"
curl -X POST http://localhost:${XPORT}/my-documents -d @./data/myobject.json --header "Content-Type: application/json"
echo -e "\nPOST document2\n"
curl -X POST http://localhost:${XPORT}/my-documents -d @./data/myobject1.json --header "Content-Type: application/json"
echo -e "\nList all documents\n"
curl http://localhost:${XPORT}/my-documents
echo -e "\nDelete document 1\n"
curl -X DELETE http://localhost:${XPORT}/my-documents/my-document
echo -e "\nList all documents\n"
curl http://localhost:${XPORT}/my-documents
echo -e "\nDelete document 2\n"
curl -X DELETE http://localhost:${XPORT}/my-documents/my-document1
echo -e "\nList all documents\n"
curl http://localhost:${XPORT}/my-documents
echo -e "\nEnd test"
