#!/bin/bash

# note: https://github.com/kubernetes-client/python/issues/1333
pip install -Iv kubernetes==31.0.0
pip install -Iv openshift==0.13.2
ansible-galaxy collection install kubernetes.core

pip install -Iv jinja2==3.1.4
pip install jinja2-base64-filters==0.1.4
