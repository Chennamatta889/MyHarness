FROM us-docker.pkg.dev/gar-prod-setup/harness-public/harness/delegate:25.06.86202

USER root

RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

USER 1000

CMD ["python3", "--version"]
