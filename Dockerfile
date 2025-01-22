# Use an official Node.js runtime as the parent image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port the application runs on
EXPOSE 7575

# Define the command to run the application
CMD ["npm", "start"]

