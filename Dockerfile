FROM mhart/alpine-node:10

# all subsequent commands will be relative to the directory /code
WORKDIR /code

# copy package.json file to /code/package.json inside the container
COPY package.json package.json
COPY package-lock.json package-lock.json

# install dependencies before copying code files in order
# to cache dependency installation step and avoid it on code 
# change that does not also change dependencies
RUN npm install --silent

# copy the rest of the files to /code inside the container
COPY . .

# allow port 4000 inside the container to be reached from outside
EXPOSE 4000

# run npm start
CMD [ "npm", "start" ]