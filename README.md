- master Coverage: [![codecov](https://codecov.io/gh/Manoj-kandpal/Article-hub/branch/master/graph/badge.svg)](https://codecov.io/gh/Manoj-kandpal/Article-hub)
- dev Coverage: [![codecov](https://codecov.io/gh/Manoj-kandpal/Article-hub/branch/dev/graph/badge.svg)](https://codecov.io/gh/Manoj-kandpal/Article-hub)

# ARTICLE-HUB

A web-application for article management

## Local setup

### Required

- Java 17
- Maven 3.6+
- PostgreSQL 11+ or some alternative
- docker

### IDE:

- Eclipse 2021-12 or newer with Lombok installed, or
- Visual Studio Code
- or some alternative

### PROFILES:

- docker (use when docker image is built)
- local (use locally)
- default (add your own configuration)

### Running Docker compose file:
### Prerequisites

- [Rancher Desktop](https://rancherdesktop.io/) or Docker installed
- `docker` CLI available in your terminal

### Steps

1. Open a terminal and navigate to the project directory containing `docker-compose.yml`.

2. Start the PostgreSQL container:

```bash
docker compose up -d
```

### Running Article Hub application:

#### Locally:
1. Run the docker-compose file
2. While running the application, set profile to one of the available options, i.e. docker. Add VM options:
- -Duser.timezone=Asia/Kolkata (if you get timezone error while running the application)

### To build docker file:

```bash
docker build -t article-hub .
```