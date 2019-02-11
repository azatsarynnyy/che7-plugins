FROM centos
RUN yum install -y buildah
COPY ["containerize.sh","/usr/local/bin/containerize"]
ENV BUILDAH_ISOLATION=chroot
WORKDIR /projects
CMD tail -f /dev/null
