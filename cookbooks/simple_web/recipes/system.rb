#
# Cookbook Name:: simple_web
# Recipe:: system
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

include_recipe 'apache2'
include_recipe 'apache2::mod_ssl'
