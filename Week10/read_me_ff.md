### Project Dependencies 
Use Original documentation of the dependencies to install the libraries
```
GoogleTest                               //unit tests
SFML                                     //visualization library
C++ 17, G++ Compiler
fmt                                       //for logging
spdlog                                    //for logging
prometheus                                // for custom metric generation
minikube                                  //scaling and container management
```

### 2D Path Planning Algorithm
You can run it directly using the executable, if you want to build it again locally, follow these steps 
```
cd RRT_Project/build
cmake ..
make

//once it is built, you can run the executable
./rrt_3d
```
### Visualization
visualization for RRT Path Planning is done using SFML library for 2D, you can expand it to 3D if needed, since path planning is for mobile robot 2D path planning is enough. Here is an example output: 
![Screenshot from 2024-10-07 19-29-36](https://github.com/user-attachments/assets/9d7d8b5c-7713-42d1-8e59-5bd7c095022c)

### Containerization Using Docker
Docker was used for containerization, you can change the dockerfile as per your dependency requirements 

To build the docker image of the project,use the command 
```
docker build -t rrt_project .
```
You can run the image directly, but it would be a single run
```
docker run -it rrt_project
```
### Scaling Of Tests Using Kubernetes
Kubernetes (minikube) is being used for local container management and then custom metrics are being attained by using Prometheus, you would need to create a .yaml file for specifying deployment details of your pods in the cluster. 
Please look at the rrt_project_deployment.yaml file for viewing your deployment selections, to apply the deployment, use the command: 
```
kubectl apply -f rrt_project_deployment.yaml
```
Check the status of the pods using the command:
```
kubectl get pods
```

If you want to scale your deployment, you can either do it in the .yaml file or using the command
```
kubectl scale deployment rrt-project --replicas=10
```
Commands to view the logs: 
```
kubectl logs <pod-name>  // to view the logs.
```
### Expose The Service For Metrics Collection
If your containers expose an API or a web interface, you’ll need to expose a Kubernetes service to allow external traffic to access your container instances.


