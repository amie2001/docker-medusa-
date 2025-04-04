FROM node:17.1.0

WORKDIR /app/medusa

# Copy package files from the correct location
COPY backend/package*.json ./

# Install dependencies
RUN npm install --loglevel=error

# Copy the rest of the backend source code
COPY backend/ . 

# Expose a port (change it if your app runs on a different port)
EXPOSE 9000

# Start the application
CMD ["npm", "run", "start"]

