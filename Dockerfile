FROM ghcr.io/mbund/argentblua:latest

RUN rpm-ostree install glibc.i686
RUN rpm-ostree install borgbackup

RUN rm -rf /tmp/* /var/*
RUN ostree container commit
