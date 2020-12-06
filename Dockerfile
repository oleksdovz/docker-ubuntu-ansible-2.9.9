FROM ubuntu:20.10

MAINTAINER oleksdovz@gmail.com

LABEL maintainer="oleksdovz@gmail.com"

RUN apt update && \
	apt install -y ansible=2.9.9+dfsg-1 && \
	rm -frv  /var/cache/apt/

ENTRYPOINT ['/usr/bin/ansible-playbook']
