# Base image Node.js versi 14
FROM node:14

# Working directory untuk container adalah /app
WORKDIR /app

# Copy seluruh source code ke working directory di container
COPY . .

# Aplikasi berjalan dalam production mode dan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm","start"]
