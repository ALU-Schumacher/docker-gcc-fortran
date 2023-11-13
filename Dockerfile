# This will install:
# - AlmaLinux 9
# - gcc-fortran
# - make

FROM almalinux:9

RUN dnf -y install make gcc-fortran \
    && dnf clean all \
    && rm -rf /var/cache/*

WORKDIR /data

# Run bash as default
CMD ["bash"]
