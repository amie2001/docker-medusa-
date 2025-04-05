FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY backend/package*.json ./

# Install dependencies
RUN npm install

# Copy backend code
COPY backend/ .

# Set environment (optional)
ENV NODE_ENV=production

# Expose Medusa default port
EXPOSE 9000

# Start Medusa server
CMD ["npm", "run", "start"]

