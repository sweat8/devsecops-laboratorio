# FROM node:19-alpine3.15

# WORKDIR /reddit-clone

# COPY . /reddit-clone
# RUN npm install 

# EXPOSE 3000
# CMD ["npm","run","dev"]

FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build || true

FROM node:20-alpine
WORKDIR /app
COPY --from=build /app ./
EXPOSE 3000
CMD ["npm","start"]
