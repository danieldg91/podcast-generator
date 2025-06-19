#steps for creating a virtual machine + cmds allowing to install things on the machine.
FROM ubuntu:22.04 

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML

#copy files from repo to docker image solution is being used in
COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]