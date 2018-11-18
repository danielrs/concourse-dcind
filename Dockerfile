from alpine

# installs bash, curl, and docker
RUN apk --no-cache add \
    bash \
    curl \
    docker \
    py-pip

# install docker-compose
RUN pip install --no-cache-dir docker-compose

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

