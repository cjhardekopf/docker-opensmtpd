FROM ubuntu:trusty
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install opensmtpd
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y opensmtpd && \
    rm -rf /var/lib/apt/lists/*

# Expose the mail port
EXPOSE 25

# Run the smtpd server in the foreground
CMD [ "/usr/sbin/smtpd", "-d" ]
