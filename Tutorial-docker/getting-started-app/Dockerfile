# syntax=docker/dockerfile:1

# Start FROM (IMAGE)-> Will download if you don't have on ur machine
FROM node:18-alpine
# (IMAGE) is created, all files is copied into (WORKDIR) as the main/context directory
# inside the docker image.
WORKDIR /app
COPY . .
# Docker use yarn (package manager) to install applications dependencies
# refer to package.json
RUN yarn install --production
# Specifies the default command to run when starting a container from this image
# Can be writted as follow :
# 	CMD ["executable", "param1", "param2"]
# 	CMD ["param1", "param2"]-> As default parameters to ENTRYPOINT
# 	CMD command param1 param2 (shell form)
# Can only contain ONE COMMAND.
CMD ["node", "src/index.js"]
# This is the exposed port (localhost)
EXPOSE 3000

