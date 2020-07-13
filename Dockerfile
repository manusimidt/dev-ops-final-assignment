# Pull the node image from docker hub for building the application
FROM node:14.4.0-slim as build-image
# define the working directory
WORKDIR /app
# copy the package.json inside the working dir
COPY package.json ./
# install all dependencies
RUN npm install
# Copy everything else into the working dir
COPY . .
# build the application in production mode
RUN npm run build

# Pull the nginx image from docker hub for serving the angular application
FROM nginx:1.19.0-alpine as serve-image
# copy the nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
# Copy the build files from the previous step into the nginx public folder
COPY --from=build-image /app/dist/devops-final-assignment /usr/share/nginx/html
# Expose the port 80 of the container
EXPOSE 8080
# disable the deamon. Nginx will now run in the foreground.
# Since we only use the container for Nginx we do not need the daemon
CMD ["nginx", "-g", "daemon off;"]
