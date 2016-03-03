#
# Cookbook Name:: mwser-iptables
# Recipe:: default
#
# Copyright (C) 2015 UC Regents
#
include_recipe 'mwser-iptables'

iptables_rule 'iptables_sshd-world' do
  # look for this rule in templates/default/iptables_sshd-world.
  source 'sshd-world.erb'
  name 'sshd-world'
  variables(
    port: 22 # abstract as variable if we ever need to set not as 22.
  )
  action :enable
end