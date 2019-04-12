# syntax=docker/dockerfile:1.0.0-experimental
FROM registry.access.redhat.com/ubi7-dev-preview/ubi:latest

# register the system, then automatically associate any available subscription matching that system
RUN --mount=type=secret,id=username --mount=type=secret,id=password subscription-manager register --username=$(cat /run/secrets/username) --password=$(cat /run/secrets/password) --auto-attach && \
    subscription-manager repos --enable=rhel-7-server-extras-rpms && \
    yum -y install buildah

COPY ["docker.sh","/usr/local/bin/docker"]
ENV BUILDAH_ISOLATION=chroot
WORKDIR /projects
CMD tail -f /dev/null
