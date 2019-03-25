FROM fedora
RUN yum install -y buildah
#COPY ["containerize.sh","/usr/local/bin/containerize"]
COPY ["docker.sh","/usr/local/bin/docker"]
ENV BUILDAH_ISOLATION=chroot
WORKDIR /projects
CMD tail -f /dev/null
