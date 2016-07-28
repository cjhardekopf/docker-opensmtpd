FROM alpine
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install opensmtpd
RUN apk add --update ca-certificates opensmtpd && \
    rm -rf /var/cache/apk/* /tmp/*

# The spool should be a volume
VOLUME [ "/var/spool/smtpd" ]

# Expose the mail port
EXPOSE 25

# Run the smtpd server in the foreground
CMD [ "/usr/sbin/smtpd", "-d" ]
