FROM node:18-alpine # Menggunakan image node:18-alphine sebagai base image
WORKDIR /src # Menentukan work directory di dalam container
COPY package*.json ./ #Salin berkas packate.json dan package-lock.json ke workdir
RUN npm install # Melakukan instalasi dependencies menggunakan npm
ENV NODE_ENV=production # Mengatur environment variable NODE_ENV ke mode produksi
RUN npm ci # Melakukan instalasi dependencies dari package-lock.json (npm ci untuk clean install)
COPY . . # Menyalin seluruh file ke dalam container

EXPOSE 3000 # Menyatakan bahwa container akan mendengarkan port 3000
CMD ["npm", "start"] # Menjalankan perintah untuk memulai aplikasi ketika container dijalankan
