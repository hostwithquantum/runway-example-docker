FROM nginxinc/nginx-unprivileged:alpine
# We're using the unprivileged version of nginx here, that doesn't run as root.
# Other images may need something like:
#
# RUN addgroup -g 1000 myuser \
#     && adduser -G myuser -u 1000 myuser -D
# USER 1000:1000
#
# Some images already have a standard non-root user to be used, in which case
# only the USER line is necessary.
#
# For runway, it must be the numeric UID (and optionally GID), for example
# "USER 1000", NOT "USER node".

COPY html /usr/share/nginx/html

# No EXPOSE needed in this case, because the nginx base image already
# exposes a port, and runway will pick that up.

# If you start with a base image that doesn't have a port exposed, you'll
# need to add something like
#
# EXPOSE 8080
