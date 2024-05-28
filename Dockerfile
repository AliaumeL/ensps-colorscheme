# Use a classic alpine image as base
FROM alpine:3.12

# Install texlive minimal for latex
# Install make for build scripts
# Install git for version control
# Install zip for packaging
RUN apk add --no-cache texlive
RUN apk add --no-cache make
RUN apk add --no-cache git
RUN apk add --no-cache zip
