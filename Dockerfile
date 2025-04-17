# Use Node.js LTS version
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY . .

# Set environment variables for order and product service
ENV ORDER_SERVICE_URL=https://order-service.fake.net/
ENV PRODUCT_SERVICE_URL=https://product-service.fake.net/

# Expose the port your app runs on (adjust if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "run", "serve"]
