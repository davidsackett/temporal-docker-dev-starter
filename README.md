# Temporal Docker Dev Starter

A lightweight Docker image and Docker compose file that runs the [Temporal](https://temporal.io) server and web UI via the cli rather than a full deployment.

This is suitable for development and testing purposes.

## Usage
```bash
docker compose up
```

The docker-compose file will start the temporal server and the temporal web UI. The web UI will be available at `localhost:8233` and the server will be available at `localhost:7233`.

## Configuration

The log level has been set to fatal by default. To change the log level, modify the `Dockerfile` file. The log level can be set to `info`, `debug`, `warn`, `error`, or `fatal`.
