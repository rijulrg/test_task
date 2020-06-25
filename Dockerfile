FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app file 
COPY . /usr/src/app

# Exposing ports
EXPOSE 3000

# CMD
CMD [ "npm", "start" ]