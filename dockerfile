## build phase
FROM node:16-alpine as build
WORKDIR /app
COPY package*.json .
RUN npm ci
COPY tsconfig.json .
COPY src src
RUN npm run build

## deploy phase
FROM node:16-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
## /build creates folder in root, use build/ here
COPY --from=build /app/build build/ 
EXPOSE 5050
ENTRYPOINT [ "npm", "run", "start:js" ]
