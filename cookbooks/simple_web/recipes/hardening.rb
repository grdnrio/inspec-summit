#
# Cookbook Name:: simple_web
# Recipe:: hardening
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'telnet' do
  action :purge
end

execute 'DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"' do
  action :run
end

#template '/etc/sysctl.conf' do
#  source 'sysctl.conf.erb'
#  action :create
#  notifies :run, 'execute[sysctl -p]', :immediately
#end

#execute 'sysctl -p' do
#  action :nothing
#end
