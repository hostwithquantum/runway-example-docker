

# Runway Example docker App

This is an example app demonstrating how to deploy a docker app
to [runway](https://runway.planetary-quantum.com/).

* clone this repo, and navigate into that directory
* `runway app create`
* `runway app deploy`
* `runway open`

You can then deploy changes by `git commit`ing them, and running `runway app
deploy` again.

This example is very simple (a static site based on the nginx image) - but any
Docker image will work, provided it `EXPOSE`s a port and doesn't run as root.

See the Dockerfile for some hints.

