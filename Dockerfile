FROM nginx:alpine

COPY html /usr/share/nginx/html

# No EXPOSE needed in this case, because the nginx base image already
# exposes a port, and runway will pick that up.

# If you start with a base image that doesn't have a port exposed, you'll
# need to add something like
#
# EXPOSE 8080
