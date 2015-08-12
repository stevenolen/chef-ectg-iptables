#
# Cookbook Name:: ectg-iptables
# Recipe:: elasticsearch
#
# Copyright (C) 2015 UC Regents
#
include_recipe 'ectg-iptables'

# TODO: if statement denoting to only do perform this on the FQDN of the ES host.
# this will allow a remote connection from the casa-saas, use a host lookup when these instances are in the same org.
node.set['ectg-iptables']['elasticsearch']['from_ip'] = '128.97.60.39'

iptables_rule 'iptables_elasticsearch' do
  # look for this rule in templates/default/iptables_sshd.
  source 'elasticsearch.erb'
  name 'elasticsearch'
  variables(
  	from_ip: node['ectg-iptables']['elasticsearch']['from_ip'],
    port: 9200 # abstract as attribute if we ever need to set not as 9200.
  )
  action :enable
end