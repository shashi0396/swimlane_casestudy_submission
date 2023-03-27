# swimlane_casestudy_submission
BASIC EC2 CREATION USING-TERRAFORM SCRIPT

	1) terrform init
	2) terraform fmt
	3) terraform validate
	4) terraform plan
	5) terraform apply
	6) terraform destroy

CONNECTION TO EC2:-

	1) chmod 400 swimlane.pem
	2) ssh -i "swimlane.pem" ubuntu@ec2-18-218-41-106.us-east-2.compute.amazonaws.com


SETUP-GIT

	1)	sudo apt install git -y
	2)	sudo git clone https://github.com/swimlane/devops-practical.git


SETUP THE DOCKER ON EC2

	1)	sudo apt-get update
		sudo apt-get install \
		    ca-certificates \
		    curl \
		    gnupg

	2)	sudo mkdir -m 0755 -p /etc/apt/keyrings
		curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

	3)	echo \
		  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
		  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
		  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

	4)	sudo apt-get update

	5)	sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

	6)	sudo chmod 777 /swimlane/devops-practical

	7)	npm install
	8)	npm install cross-env

DOCKER commands:-

	9)	sudo docker build -t docker-node-mongo .
	10)	sudo docker run -it -p 3000:3000 docker-node-mongo
	11)	sudo docker-compose build
	12)	sudo docker-compose up
	13)	sudo docker images
  	14) 	sudo docker ps 
  	15) 	sudo docker ps -a
	16)	sudo docker tag docker-node-mongo:latest sun113/swimlane
 	 17) 	sudo docker login
	18)	sudo docker push sun113/swimlane:latest
  	19) 	sudo docker logout


Minikube-INSTALL ON EC2

	1)	sudo apt-get update
	2)	sudo apt-get install apt-transport-https
	3)	sudo apt-get install virtualbox-ext-pack -y
	4)	sudo apt-get install conntrack
	4)	wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
	5)	sudo cp minikube-linux-amd64 /usr/local/bin/minikube
	6)	sudo chmod 755 /usr/local/bin/minikube


Kubectl installation on EC2

	1)	  sudo apt-get update
	2)	  sudo apt-get install -y ca-certificates curl
	3)	  sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
	4)	  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
	5)	  sudo apt-get update
	6)	  sudo apt-get install -y kubectl

  
  k8-minikube-cluster-commands

	1)	  minikube start--driver=docker
	2)	  sudo usermod -aG docker $USER && newgrp docker 
	3)	  sudo growpart /dev/xvda 1
	4)	  sudo resize2fs /dev/xvda1
	5)	  vim deployment.yaml
	6)	  kubectl apply -f deployment.yaml
	7)	  vim service.yaml  
	8)	  kubectl apply -f service.yaml
	9)    	  kubectl apply -f nginx/deployment.yaml
	10)  	  kubectl apply -f nginx/service.yaml
	11)	  kubectl get pods
	12)       kubectl describe pods
	13)       kubectl get services
	14)       minikube service nginx-loadbalancer-service
	15)       kubctl delete deployments --all
	16)       kubctl get pods
	17)       kubctl delete services --all
	18)       kubctl get pods

HELM

	19) helm install ./k8s --dry-run --generate-name
	20) helm install ./k8s --generate-name
	21) minikube service nginx-loadbalancer-service
	22) helm list
	23) helm upgrade k8s-1608462921 ./k8s
	24) kubectl get pods
	25  helm list

ANSIBLE INSTALL

	26) sudo apt-add-repository ppa:ansible/ansible
	27) sudo apt update
	28) sudo apt install ansible
	29) sudo ansible -i inventory -m ping all

ANSIBLE
	
	29) sudo -i
	30) cat /etc/ntp.conf  
	31) vim 'ntp_debian.conf'
	32) mkdir templates
	33) mv ntp_* templates/
	34) cd templates 
	35) mv ntp_debian.conf ntp_debian.conf.j2
	36) ansible-playbook ntp-server-playbook.yaml -C   ( for dry run)
	37) ansible-playbook ntp-server-playbook.yaml

