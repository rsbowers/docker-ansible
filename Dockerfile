FROM williamyeh/ansible:alpine3

RUN apk add --no-cache bash git openssh && \
    mkdir test && cd test && \
    git clone https://github.com/rsbowers/ansible-sandbox.git && \
    cd ansible-sandbox && \
    ansible-playbook playbook.yml