#
# Cookbook Name:: showip
# Recipe:: default
#
# Copyright 2014, Sergey Tsivin
#
# All rights reserved - Do Not Redistribute
#

##### Print IP of the host only only network

ip = node[:network][:interfaces][:eth1][:addresses].detect{|k,v| v[:family] == "inet" }.first

log "showip" do
    message <<EOF

+-------------------------------------------------------------------------------------
|
| Please add the following line to your /etc/hosts file:
|
| #{ip}   #{node[:showip][:server_name]}
|
+-------------------------------------------------------------------------------------

EOF
    level :info
end