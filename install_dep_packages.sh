#!/bin/bash

# note: https://github.com/kubernetes-client/python/issues/1333
rye sync
#pip3 install -Iv kubernetes==11.0.0
#pip3 install -Iv openshift==0.11.2
ansible-galaxy collection install kubernetes.core

#pip3 install -Iv jinja2==3.0.3
#pip3 install jinja2-base64-filters==0.1.4
