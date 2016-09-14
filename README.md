# angular

Docker image with node, gulp and angular.

We have built a docker image with the global and local `node_modules` directory within the container, 
 so you don't have to mess with it in your local project directory.

We included the following stuff:
- node 6.4.0
- angular-cli@webpack
- process-nextick-args
- util-deprecate
- typings
- gulp

## Usage

  $> docker pull ipunktbs/angular

  $> docker pull ipunktbs/angular:{TAG}

We prefer the last one to use a concrete image tag.
