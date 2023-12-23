# Base image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Copy .env file
COPY .env .

# Install app dependencies 
RUN npm install
RUN npm install dotenv

# Bundle app source code
COPY . .

# Expose port and start application
EXPOSE 3000
CMD ["node", "index.js"]