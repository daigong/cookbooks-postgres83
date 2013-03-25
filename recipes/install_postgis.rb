execute "安装postgis 到 #{node[:postgres][:install_postgis_path]}" do

	command """
		cd #{node[:postgres][:src_temp_path]};
		rm -rf postgis;
		tar -xzvf postgis.tar.gz;
		cd postgis;
		chmod +x configure;
		./configure --prefix=#{node[:postgres][:install_postgis_path]}  --with-pgsql=#{node[:postgres][:install_postgres_path]}/bin/pg_config  --with-proj=#{node[:postgres][:install_proj_path]};
		make&&make install;
	"""

end
