FROM ubuntu:bionic

LABEL maintainer="Kaj Dreef"

# General tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -q -y \
    software-properties-common \
    curl \
    sqlite3 \
    git

# Languages and tools
RUN apt-get install -q -y \
    python3-pip \
    openjdk-11-jdk \
    maven \
    gradle \
    ant

WORKDIR /Users/spideruci/
CMD ["/bin/bash"]