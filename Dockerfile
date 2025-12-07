FROM node 
# Use the official Node.js image as the base image
WORKDIR /app 
# Set the working directory in the container
COPY . /app 
# Copy the current directory contents into the container HOST FILE SYSTEM TO CONTAINER FILE SYSTEM
RUN npm install 
# Install any needed packages specified in package.json
EXPOSE 80 
# Expose port 80 to the outside world
#
# RUN  node server.js is not correct because image is just the blueprint 
#we start the container using the image and then run the command
# To run this container: docker run -p 2080:80 -d nodejs-app
# -p 2080:80 maps host port 2080 to container port 80
# -d runs the container in detached mode (background)
# To view all running containers and their ports: docker ps
CMD ["node" , "server.js"] 
#espace betwenn cmd and [
#will be executed when a container is started from the image
# use node to run the server.js file
# is always the last line in the dockerfile
