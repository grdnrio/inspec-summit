#
# Cookbook Name:: simple_web
# Recipe:: hardening
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'telnet' do
  action :purge
end
