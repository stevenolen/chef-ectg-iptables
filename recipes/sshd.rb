#
# Cookbook Name:: ectg-iptables
# Recipe:: default
#
# Copyright (C) 2015 UC Regents
#
include_recipe 'ectg-iptables'

iptables_rule 'iptables_sshd' do
  # look for this rule in templates/default/iptables_sshd.
  source 'sshd.erb'
  name 'sshd'
  variables(
    port: 22 # abstract as variable if we ever need to set not as 22.
  )
  action :enable
end