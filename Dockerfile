# Use Node.js 22 (latest LTS) for building the React app
FROM node:22-alpine AS build

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json separately for better caching
COPY package*.json ./

# Install dependencies
RUN npm install --frozen-lockfile

# Copy the rest of the app source code
COPY . .

# Expose port 5173
EXPOSE 5173

CMD ["npm", "run", "dev"]
