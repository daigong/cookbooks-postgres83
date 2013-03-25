directory node.default[:postgres][:src_temp_path] do
	action :create
	#递归创建
	recursive true
end

execute "复制安装文件到src目录:#{node[:postgres][:src_temp_path]}" do
	command """
		cd #{node[:postgres][:tarball_path]};
		cp * #{node[:postgres][:src_temp_path]} -rf;
		cd #{node[:postgres][:src_temp_path]};
	"""
end

execute "安装postgresql" do
	command """
		cd #{node[:postgres][:src_temp_path]};
		chmod +x postgresql.bin;
		./postgresql.bin --mode unattended --prefix #{node[:postgres][:install_postgres_path]} --superpassword 123456 --locale zh_CN.utf8
	"""
end
