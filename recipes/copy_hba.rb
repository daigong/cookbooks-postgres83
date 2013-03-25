
#更换postgresql授权文件
template "#{node[:postgres][:install_postgres_path]}/data/pg_hba.conf" do
  source "pg_hba.conf.erb"
end

service "postgresql-8.3" do
  action :restart
end

