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
