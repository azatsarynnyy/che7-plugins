FROM centos
RUN yum install -y buildah
COPY ["docker.sh","/usr/local/bin/docker"]
ENV BUILDAH_ISOLATION=chroot
WORKDIR /projects
CMD tail -f /dev/null
