# gitlab_compose_jenkins
it's a package of gitlab, jenkins with docker compose and docker. its easy to setup this environment to anyone to start the development
##### note:The jenkins image has installed docker compose inside, so dont get confused by the name 

## to deploy follow the steps

- Create a directory with any name of your choice
- Make this directory as your current working directory (change directory 'cd' command)
- use <b>Dockerfile</b> to build the jenkins image
``` 
docker build -t jenkins_docker_compose . 
```
- Then we have to create volumes required for the services
```
docker volume create jenkins-docker-certs
docker volume create jenkins-data
mkdir /srv/gitlab
```
- Next we have to create network for our packages to run separately
``` 
docker network create -d bridge jenkins
```
- Now we are finally ready to start the packges now bring focus back to the docker compose file
``` 
docker-compose up -d
```
- Now check if the containers are running by using the command (three containers should be running)
``` 
docker ps
```
          
