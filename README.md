# PETE application

You'll need to have docker and docker-compose installed

## Create a new Phoenix application via docker
Work in progress
Ideally we would like to generate the phoenix app from the docker image
to avoid having to install phoneix on the machine.
We can do run `docker-compose run --rm app mix phx.new . --app hello`
but this will create the files with the user `root` from docker and it won't
be possible to edit this files with a "normal" user from the machine
see https://dev.to/acro5piano/specifying-user-and-group-in-docker-i2e

replace `hello` with your application's name

## Run the application

If the src folder is already defined and contains the Phoenix application we can run
`docker-compose up`

This will run the containers/services defined in docker-compose.yml, and the server should be
accessible on localhost:4000
