#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Install apache package for centos server
# Added dependency

if    node['platfom_family'] == "rhel" 
	package = 'httpd'
elsif node['platform_family'] == "debian"
	package = 'apache2'
end

package 'apache2' do
	package_name httpd
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable,:start]
end

