Here’s a step-by-step guide to deploying a simple Tween web application on a Kubernetes cluster using Minikube, setting up advanced ingress networking with URL rewriting and sticky sessions, and configuring horizontal pod autoscaling.

## Deploy a tween Web Application

1. Set Up Minikube
```
minikube start
```
2. Create a Dockerfile
```
FROM nginx:alpine
COPY . /usr/share/nginx/html
```
3. Build and Push the Docker Image
```
docker build -t tween-web-app:1.0 .
docker push your_dockerhub_username/tween-web-app:1.0
```
4. Create / Apply Kubernetes Deployment and Service
```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
5. Enable Ingress in Minikube
```
kubectl apply -f ingress.yaml
```
6. Create / Apply Ingress Resource
```
kubectl apply -f ingress.yaml
```
7. Update /etc/hosts
```
minikube ip
```
```
sudo nano /etc/hosts
``` 
Add the following line to your /etc/hosts file
```
127.0.0.1 tween-web-app.local
```
8. Configure Horizontal Pod Autoscaling
```
minikube addons enable metrics-server
```
9. Apply HPA Resource
```
kubectl apply -f hpa.yaml
```
10. Generate Load
```
hey -z 1m -c 10 http://tween-web-app.local
```
11. Check HPA Status
```
kubectl get hpa
```
12. Access the Application

Open a browser and navigate to http://tween-web-app.local , You should see your tween web application.
```
minikube service static-web-app-service --url
```
