# rack_k8_sample

# Requirement: Need a running kubernetes environment. Minikube should work, I tested in multinode env deployed using Kubespray

# Clone the repo:
git clone https://github.com/fd98279/rack_k8_sample.git

# Run the run.sh
-> Creates a docker image with node.js application with required REST api
-> Tags the docker image so that docker image can be used by K8
-> Creates a deployment with the image
-> Creates a service which exposes the node.js server port so that rest api is available on the node IP address

# Run test.sh
-> Runs the tests, view the file for more information

# Run stop.sh
-> Deletes the deployment and service created by run.sh
