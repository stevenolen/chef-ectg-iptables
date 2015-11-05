#
# Cookbook Name:: ectg-iptables
# Recipe:: http_https
#
# Copyright (C) 2015 UC Regents
#
include_recipe 'ectg-iptables'

iptables_rule 'iptables_http_https' do
  # look for this rule in templates/default/http_https.
  source 'http_https.erb'
  name 'http_https'
  action :enable
end