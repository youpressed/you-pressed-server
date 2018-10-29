### Setup
1. `yarn install`

### Start services
1. `yarn jc serve` or `yarn jc s`

### Stop services
1. `ctrl + c` - If docker containers fail to shutdown, use `yarn jc kill`

### The juice-core-cli
1. `yarn jc --help` for a full list of commands

## Docker mgmt
### Building docker images
1. Build a new base web container (When Gemfile changes): `docker build -f docker/Dockerfile.app -t youpressed/juice-core-server:0.0.1 .`

### Publishing docker hub
1. Push to dockerhub registry: `docker push youpressed/juice-core-server:0.0.1`
