# docker-opensmtpd
Simple OpenSMTPD server. It is important for the spool directory */var/spool/smtpd* to be persistent. This direcotry must also be owned by root and have permissions "rwx--x--x". In addition, it expects the configuration to be available at */etc/smtpd/smtpd.conf*.

