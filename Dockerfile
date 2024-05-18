FROM node:20-alpine

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm i

# Copy the rest of the application
COPY . .

EXPOSE 5000
CMD [ "npm", "start","--omit=dev"]