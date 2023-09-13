## TUTORIAL DOCKER

* git clone repository-name
* cd repository-name
* verif Dockerfile of the repository-name
* docker build -t repository-name .

The -t flag tags your image with a name. (welcome-to-docker in this case). And the . lets Docker know where it can find the Dockerfile. \

Once the build is complete, an image will appear in the Images tab. Select the image name to see its details. Select Run to run it as a container. In the Optional settings remember to specify a port number (something like 8089).\

* View Front end -> Containers -> 8089:***** .... (go to html page)
