# Use the updated Node.js runtime with a fixed version
FROM node:22.13.1-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files into the container
COPY . .

# Expose the application port
EXPOSE 7575

# Define the command to run the application
CMD ["npm", "start"]
