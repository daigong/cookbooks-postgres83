template "/etc/profile.d/postgresql.sh" do
  source "postgresql.profile.erb"
  variables(
    :postgresql_path => node[:postgres][:install_postgres_path],
    :proj_path => node[:postgres][:install_proj_path],
    :geos_path => node[:postgres][:install_geos_path],
    :postgis_path => node[:postgres][:install_postgis_path]
  )
end

