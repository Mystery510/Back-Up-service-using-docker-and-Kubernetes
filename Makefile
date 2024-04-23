build:
	sudo docker build -t backup-container .

run: 
	sudo docker run -v /home/ubuntu/Desktop/cc_project/app/credentials.json:/app/credentials.json -d backup-container

show:
	sudo docker ps
showall:
	sudo docker ps -a

cron:
	sudo kubectl apply -f backup-cronjob.yaml

pvc:
	sudo kubectl apply -f data-pvc.yaml

getpods:
	sudo kubectl get pods

start: 
	minikube start --driver=docker

tag:
	docker tag backup-container:latest ishreya09/backup-container:latest

push: 
	docker push ishreya09/backup-container:latest

security:
	kubectl create secret generic api-credentials --from-literal=client-id=93947941280-m6ocqm72ugc2pso89tpfef4rvndubds0.apps.googleusercontent.com --from-literal=client-secret=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


# to remove container
# docker rm <container_id>

# to check logs
# docker logs <container_id>

# to start a stopped container
# docker start <container_id_or_name>

# stop a running container
# docker stop <container_id>

# Stop a running container forcefully.
# docker kill <container_id_or_name> 

# to stop and remove simentaneously
# docker stop my_container && docker rm my_container

# Remove all stopped containers.
# docker container prune

# Execute a command in a running container
# docker exec <container_id_or_name> <command>: 


# Logs of a pod
# kubectl logs podname
# kubectl logs -f podname

