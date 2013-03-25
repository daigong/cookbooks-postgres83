template "/etc/ld.so.conf.d/bottle_postgres.conf" do
  source "bottle_postgres.ldconfig.conf.erb"
  variables(
    :proj_path => node[:postgres][:install_proj_path],
    :postgis_path => node[:postgres][:install_postgis_path]
  )
end

execute "ldconfig reload" do
	command "ldconfig"
end
