# Use the official Node.js image as a base
FROM node:latest

# Set the working directory inside the container
WORKDIR /server.js

# Copy package.json and package-lock.json first to leverage caching
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the source files into the image
COPY . .

# Expose the port that the application listens on
EXPOSE 8000

# Command to run the application
CMD ["npm", "start"]
