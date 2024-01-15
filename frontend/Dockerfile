ARG NODE_VERSION=20.10.0
FROM node:${NODE_VERSION}-alpine as base

# Set working directory
WORKDIR /usr/src/app  

# Copy package files first
COPY package*.json ./  
# Install dependencies
RUN npm install  

# Copy the rest of the frontend code
COPY . .

# Build React frontend
RUN npm run build  

EXPOSE 3000

# Start the React app
CMD ["npm", "start"]  