# Use the official Node.js image

FROM node:20

# Create app directory

WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN npm install

# Bundle app source

COPY . .

# Expose the port on which the app runs

EXPOSE 3000

# Command to run the app

CMD [ "npm", "start" ]
 
