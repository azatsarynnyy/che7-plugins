FROM fedora
RUN yum install -y buildah
COPY ["docker_build.sh","/usr/local/bin/docker_build"]
CMD tail -f /dev/null
