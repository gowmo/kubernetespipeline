# Build environment
 
# pull official base image 
FROM node:lts-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package*.json ./
RUN npm install 
RUN npm install -g npm@latest


# add app
COPY . ./

# start app
CMD ["npm", "start"]


