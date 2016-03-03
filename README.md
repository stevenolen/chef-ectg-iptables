# mwser-iptables

mwser wrapper cookbook for managing iptables. 

## Supported Platforms

CentOS 6.x

## Usage

This cookbook contains a number of recipes intended to abstract away all of the wonderful idiosyncrasies of iptables. Add them (order matters!!) to your node's run_list in order to set up iptables for this configuration.

### mwser-iptables::sshd

Opens SSH access to known ucla subnet addresses that will be used to manage.

### mwser-iptables::sshd-world

Opens SSH to the world, in the event that this is needed.

### mwser-iptables::http_https

Opens 80/443 to the world. A typical need for our webapps.

### mwser-iptables::elasticsearch

Opens 9200 to explicit IP addresses that should have access. Look at/modify this as needs change.

### mwser-iptables::drop_input

Make sure this is ***not*** the only `mwser-iptables` recipe, or you'll close all access to the node. Also -- it drops any input not handled by the above recipes.

## License and Authors

Author:: Steve Nolen (technolengy@gmail.com)
