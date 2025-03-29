# Create a docker development environmnet 

## Install docker


## Create the container image

Create a project folder for your software

Create a src folder inside the project folder
Put the python code inside the `src` folder

Create a `requirements.txt` file inside your root project folder
Add the python libs (project dependences) in your `requirements.txt` file

Create a Dockerfile inside your root project folder

Build your docker image:
`docker build -t fastapi-img .`

Checking the image creation. List images: 
`docker images`

## Create and run container from image

Run the image created: 
`docker run --name fastapi-container -p 80:80 fastapi-img`

Run the image created (detached/background mode):
`docker run --name fastapi-container -p 90:80 -d fastapi-img`

Run the image created in detached mode and map local project folder as a container volume
`docker run --name fastapi-container -p 90:80 -d -v ${pwd}:/code fastapi-img`

# commands
docker rm container_name
docker rmi image_name 
docker images
docker stop container_name
docker ps -a
docker ls -a

