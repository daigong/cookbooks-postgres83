execute "在postgresql中创建postgis template 库" do
	command """
	cd #{node[:postgres][:install_postgis_path]};
	createdb -U postgres postgis;
	psql -U postgres -d postgis -f share/lwpostgis.sql;
	psql -U postgres -d postgis -f share/lwpostgis_upgrade.sql;
	psql -U postgres -d postgis -f share/spatial_ref_sys.sql;
	"""
end
