#!/usr/bin/env bash

apt-get update && apt-get -y install unzip jq curl
curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip -o /tmp/packer.zip
unzip /tmp/packer.zip
mv packer /usr/local/bin

packer build packer.json
