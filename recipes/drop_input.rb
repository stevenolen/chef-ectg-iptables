#
# Cookbook Name:: mwser-iptables
# Recipe:: default
#
# Copyright (C) 2015 UC Regents
#
include_recipe 'mwser-iptables'

iptables_rule 'iptables_drop_input' do
  # look for this rule in templates/default/drop_input.
  source 'drop_input.erb'
  name 'drop_input'
  action :enable
end
