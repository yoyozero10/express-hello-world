# Sử dụng Node.js LTS làm base image
FROM node:18-alpine

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy file package.json vào container
COPY package.json .

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Expose port ứng dụng sử dụng
EXPOSE 3001

# Lệnh khởi chạy ứng dụng
CMD ["node", "app.js"]
