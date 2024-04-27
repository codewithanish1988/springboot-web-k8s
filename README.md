# springboot-web-k8s Application
***

This project uses **Java 17** runtime and **Springboot 2.7.8**    
It's a demo web application which returns a response `Hello!!!`, on calling the url `<web-app hostname>:<port>/hello`

# Application Deployment
***
1. #### Build the application 
   `mvn clean package`

2. #### Build docker Image  
   `docker build -t <namespace>/<repository name>:<tag name> .`  

3. #### Push the docker Image to docker hub 
   `docker push <namespace>/<repository name>:<tag name>`

4. #### To deploy the application in kubernetes cluster.
   
    > Before running the command, please change the "image: codewithanish1988/springboot-web-k8s:latest" in deployment.yml to your image name as build above.  

   `kubectl apply -f deployment.yml`
 
5. #### To create the LoadBalancer in kubernetes cluster.
   `kubectl apply -f service.yml`

6. #### Run below commands to check the logs
   `kubectl get pods`   
   `kubectl logs <app pod name>`

9. #### Run below command to see the LoadBalancer details.
   `kubectl get svc`   
   `kubectl describe svc <app service name>`  

