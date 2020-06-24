FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package*.json ./
RUN npm install

# Copy app file 
COPY app/ .

# Exposing ports
EXPOSE 3000

# CMD
CMD [ "npm", "start" ]