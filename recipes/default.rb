#
# Cookbook Name:: ohai_dpkg
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Doing it this way might break shit. 
#
# cookbook_file "/etc/chef/client.rb" do
#     source "client.rb"
#     mode "0775"
#     owner "root"
#     group "root"
# end

execute "update_client.rb" do
    command "sed -i "'$ a\Ohai::Config[:plugin_path] << '/etc/ohai/plugins'" /etc/chef/client.rb"
end

directory "/etc/ohai/plugins/" do
    mode "0775"
    owner "root"
    group "root"
    action :create
    recursive true
end

cookbook_file "/etc/ohai/plugins/dpkg.rb" do
    source "dpkg.rb"
    mode "0775"
    owner "root"
    group "root"
end