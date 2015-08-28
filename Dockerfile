FROM centos:7

# Download vault binary
RUN yum install unzip -y
RUN curl -O https://dl.bintray.com/mitchellh/vault/vault_0.2.0_linux_amd64.zip -L
RUN unzip vault_0.2.0_linux_amd64.zip -d /usr/bin/

# Start vault server
ENTRYPOINT ["/usr/bin/vault", "server"]
CMD ["-dev"]
