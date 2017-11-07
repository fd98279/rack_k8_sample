# rack_k8_sample

Requirement: Need a running kubernetes environment. Minikube should work, I tested in multinode env deployed using Kubespray

# Clone the repo:
git clone https://github.com/fd98279/rack_k8_sample.git

# Run the run.sh
* Creates a docker image with node.js application with required REST api
* Tags the docker image so that docker image can be used by K8
* Creates a deployment with the image
* Creates a service which exposes the node.js server port so that rest api is available on the node IP address

# Run test.sh
* Runs the tests, view the file for more information

# Run stop.sh
* Deletes the deployment and service created by run.sh

# Sample run on my machine
```bash
vagrant@vagrant:/tmp/rack_test/rack_k8_sample$ git clone https://github.com/fd98279/rack_k8_sample.git
vagrant@vagrant:/tmp/rack_test/rack_k8_sample$ cd rack_k8_sample/
vagrant@vagrant:/tmp/rack_test/rack_k8_sample$ sudo ./run.sh  #Need sudo if docker requires root access
vagrant@vagrant:/tmp/rack_test/rack_k8_sample$ ./test.sh
2017-11-07 23:47:54.056551 I | proto: duplicate proto type registered: google.protobuf.Any
2017-11-07 23:47:54.056687 I | proto: duplicate proto type registered: google.protobuf.Duration
2017-11-07 23:47:54.056710 I | proto: duplicate proto type registered: google.protobuf.Timestamp

Begin test

Listing all documents

"{}"
POST document1

{"message":"Document created!"}
POST document2

{"message":"Document created!"}
List all documents

"{\"my-document\":{\"value\":{\"id\":\"my-document\",\"data\":{\"value1\":true,\"value2\":100,\"value3\":\"some string data\"}},\"expire\":\"NaN\"},\"my-document1\":{\"value\":{\"id\":\"my-document1\",\"data\":{\"value1\":true,\"value2\":100,\"value3\":\"some string data\"}},\"expire\":\"NaN\"}}"
Delete document 1

{"message":"Document deleted!"}
List all documents

"{\"my-document1\":{\"value\":{\"id\":\"my-document1\",\"data\":{\"value1\":true,\"value2\":100,\"value3\":\"some string data\"}},\"expire\":\"NaN\"}}"
Delete document 2

{"message":"Document deleted!"}
List all documents

"{}"
End test

vagrant@vagrant:/tmp/rack_test/rack_k8_sample$ ./stop.sh
2017-11-07 23:48:54.491924 I | proto: duplicate proto type registered: google.protobuf.Any
2017-11-07 23:48:54.492361 I | proto: duplicate proto type registered: google.protobuf.Duration
2017-11-07 23:48:54.492482 I | proto: duplicate proto type registered: google.protobuf.Timestamp
deployment "hello-node" deleted
2017-11-07 23:48:58.782807 I | proto: duplicate proto type registered: google.protobuf.Any
2017-11-07 23:48:58.782898 I | proto: duplicate proto type registered: google.protobuf.Duration
2017-11-07 23:48:58.782932 I | proto: duplicate proto type registered: google.protobuf.Timestamp
service "hello-node" deleted

```
