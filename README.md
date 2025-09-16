# HelmHub Mini Project

## Project Overview
HelmHub is a Kubernetes deployment project where we automate the deployment of applications using **Helm charts** and **Jenkins CI/CD pipeline**.  

The project demonstrates:
- Helm chart creation and packaging
- Kubernetes deployment automation
- CI/CD pipeline setup with Jenkins

---


---

## CI/CD Pipeline Steps
1. **Checkout**: Pulls code from GitHub repository.  
2. **Lint Helm Chart**: Validates the Helm chart using `helm lint`.  
3. **Package Helm Chart**: Packages the chart with `helm package`.  
4. **Deploy to Kubernetes**: Deploys the chart to the cluster using `helm upgrade --install`.  

---

## Tools & Technologies Used

<a href="https://www.jenkins.io/" target="_blank" rel="noreferrer"> 
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/jenkins/jenkins-original.svg" alt="jenkins" width="60" height="60"/> 
</a> 
<a href="https://helm.sh/" target="_blank" rel="noreferrer"> 
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/helm/helm-original.svg" alt="helm" width="60" height="60"/> 
</a> 
<a href="https://www.docker.com/" target="_blank" rel="noreferrer"> 
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="docker" width="60" height="60"/> 
</a> 
<a href="https://kubernetes.io/" target="_blank" rel="noreferrer"> 
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/kubernetes/kubernetes-plain.svg" alt="kubernetes" width="60" height="60"/> 
</a> 
<a href="https://git-scm.com/" target="_blank" rel="noreferrer"> 
  <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/git/git-original.svg" alt="git" width="60" height="60"/> 
</a>

---
<img src="" alt="result" width="100" height="100">

## Setup Instructions
1. Install **Helm** and **kubectl** on your system.  
2. Start **Minikube** for local Kubernetes cluster.  
3. Clone this repository:
```bash
git clone https://github.com/AyachyIbtyssem/HelmHub.git
cd HelmHub

4.Docker
Build and run the Docker image (if your project uses Docker):
```bash
docker build -t helmhub-app .
docker run -d --name helmhub-container helmhub-app

5.Start Minikube:
minikube start

6. Deploy the application using Helm:
helm lint ./helmhub-chart
helm package ./helmhub-chart
helm upgrade --install helmhub ./helmhub-chart-0.1.0.tgz --namespace helmhub --create-namespace

7. check deployed pods and services:
kubectl get pods -n helmhub
kubectl get svc -n helmhub
kubectl port-forward svc/helmhub 8080:80  # Access the app locally

8.Trigger the CI/CD pipeline to automate deployment:
# On Jenkins UI, click "Build Now" for the HelmHub pipeline
# Or use Jenkins CLI if set up:
java -jar jenkins-cli.jar -s http://localhost:8080 build HelmHub



This is **exactly the sequence your user should follow** to run the project from Docker → Minikube → Helm → Kubernetes → Jenkins.  

If you want, I can **integrate this with your logos section** so the README looks very professional and clean. Do you want me to do that next?
