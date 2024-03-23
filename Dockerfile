FROM debian:bookworm-slim

RUN apt update && apt install -y curl && curl -sSf https://temporal.download/cli.sh | sh

EXPOSE 7233
EXPOSE 8233

# log levels: ["debug" "info" "warn" "error" "fatal"]
ENTRYPOINT [ "/root/.temporalio/bin/temporal", "server", "start-dev", "--log-format=pretty", "--log-level=fatal", "--ip=0.0.0.0", "--ui-ip=0.0.0.0" ]