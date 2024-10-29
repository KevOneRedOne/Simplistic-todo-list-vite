# Step 1 - Build the app
FROM node:18.20-slim AS builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --legacy-peer-deps

COPY . .

RUN npm run build && npm cache clean --force

# Step 2 - Serve the app on nginx
FROM nginx:stable-alpine

COPY --from=builder /app/dist /usr/share/nginx/html/Simplistic-todo-list-vite

COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]