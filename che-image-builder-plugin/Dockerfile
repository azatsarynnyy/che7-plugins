FROM centos
RUN yum install -y buildah
COPY ["docker_build.sh","/usr/local/bin/docker_build"]
ENV BUILDAH_ISOLATION=chroot
CMD tail -f /dev/null
