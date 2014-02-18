#
# Cookbook Name:: mytest
# Recipe:: default
#
# Copyright 2014, Sergey Tsivin
#
# All rights reserved - Do Not Redistribute
#

["git", "subversion", "php5", "ant", "ant-contrib", "unzip"].each do |p|
  package p
end

web_app "my_site" do
    server_name "mytest.wrk"
    server_aliases [ "www.mytest.wrk" ]
    cookbook "apache2"
    docroot "/www/mytest.wrk/htdocs"
end
