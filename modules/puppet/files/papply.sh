#!/bin/bash
sudo puppet apply /home/av/puppet/manifests/site.pp --modulepath=/home/av/puppet/modules/ $*
