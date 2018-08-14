## commands

### production

`docker-compose up -d --build`
builds the docker image and run it in background
--build here is important, otherwise it will try to reuse a previous image if available, regarding of code change

### development

`docker-composer -f docker-compose-dev.yml`
builds the docker image and run it mapping the code directory to /code directory inside the container
so code change inside this folder is reflected inside the /code directory inside container
nodemon is started so code change also restar the node server inside the container
here the --build flag (used for production) is not necessary since we mount the volume with current code before the server is run,

## Why XXX

### why node_modules in .dockerignore?

A common mistake is to include the local node_modules in the container image when building, (which will also be overridden in the npm install step)
this can make the build process really slow, and open a plethora of hard-to-debug problems.
