# OpenCart Docker

Docker container for [Opencart v4](https://github.com/opencart/opencart) development.

## Installation
* Clone Opencart docker container image
* Copy Opencart V4 files to ```/www``` directory
* Run command ```make build```
* Rename ```.env-example``` file to ```.env```

## Available make commands

* help - Get this help.
* build - Build docker containers
* run - Start docker containers
* restart - Restarts docker containers
* stop - Stop all docker containers
* ssh - Connect to docker containers (bash)

## Environment setup

* PROJECT_HOST - project host (**opencart.localhost** default)
* MYSQL_VERSION - MySql version (**8.0** default)
* TRAEFIK_VERSION - Traefik version (**v1.7** default)
* PMA_VERSION - PhpMyAdmin version (**5** default)

* MYSQL_ROOT_PASSWORD - MySQL root user password. (**root** default)
* MYSQL_DATABASE - MySQL database name (**opencart** default)

* MYSQL_USERNAME - MySQL user (**root** default)
* MYSQL_PASSWORD - MySQL user password

## Available PHP extensions

* mysqli
* opcache 
* pdo 
* pdo_mysql 
* zip 
* gd

## Available routes

* **opencart.localhost** - Opencart local uri.
* **pma.opencart.localhost** - PhpMyAdmin uri.
* **traefik.opencart.localhost** - networking stack dashboard uri.

## PMA
In order to connect database use credentials.

* Host - **mysql**
* Username - **root**
* Password - **opencart**