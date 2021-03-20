FROM nginx:latest

RUN apt-get -y update \
    && apt-get -y install busybox \
    && busybox --install \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
