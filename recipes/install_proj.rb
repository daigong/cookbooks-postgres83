execute "安装proj 到 #{node[:postgres][:install_proj_path]}" do

	command """
		cd #{node[:postgres][:src_temp_path]};
		rm -rf proj;
		tar -xzvf proj.tar.gz;
		cd proj;
		chmod +x configure;
		./configure --prefix=#{node[:postgres][:install_proj_path]}
		make&&make install;
	"""

end
