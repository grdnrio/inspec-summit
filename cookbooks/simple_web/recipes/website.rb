#
# Cookbook Name:: simple_web
# Recipe:: website
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# copy main page
cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

# setup CSS
directory '/var/www/html/css' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

template '/var/www/html/css/style.css' do
  source 'style.css.erb'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

# add images
directory '/var/www/html/images' do
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end

cookbook_file '/var/www/html/images/chef-logo.png' do
  source 'chef-logo.png'
  owner 'www-data'
  group 'www-data'
  mode '0755'
  action :create
end
