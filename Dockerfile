# Use an official Node runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining files to the working directory
COPY . .

# Set environment variable for port
ENV PORT=7775

# Expose the port specified in the environment variable
EXPOSE $PORT

# Command to run the React app
CMD ["npm", "start"]
