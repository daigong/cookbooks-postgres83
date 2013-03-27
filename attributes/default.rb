node.default[:postgres][:install_prefix_path] = "/data"

node.default[:postgres][:install_postgres_path] = "#{node[:postgres][:install_prefix_path]}/postgres83"
node.default[:postgres][:install_proj_path] = "#{node[:postgres][:install_prefix_path]}/proj"
node.default[:postgres][:install_geos_path] = "#{node[:postgres][:install_prefix_path]}/geos"
node.default[:postgres][:install_postgis_path] = "#{node[:postgres][:install_prefix_path]}/postgis"

node.default[:postgres][:src_temp_path] = node[:postgres][:install_prefix_path] + "/src/chef-postgres83"

#find the tarball path
require 'pathname'
tarball_path = Pathname.new(File.dirname(__FILE__)+"/../files/default/").realpath
#set the tarball path
node.default[:postgres][:tarball_path] = tarball_path

