package "git"
include_recipe "nodejs"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "instedd-common::passenger"

rbenv_ruby "2.1.2"
rbenv_gem "bundler" do
  ruby_version "2.1.2"
end

include_recipe "mysql::client"
include_recipe "database::mysql"

mysql_connection = {
  host: node['mysql']['server_host'],
  username: node['mysql']['admin_username'] || 'root',
  password: node['mysql']['admin_password'] || node['mysql']['server_root_password']
}

mysql_database "resourcemap" do
  connection mysql_connection
end

app_dir = "/u/apps/resource_map"

rails_web_app "resource_map" do
  server_name node['resourcemap']['host_name']
  config_files %w(database.yml guisso.yml settings.yml poirot.yml)
  passenger_spawn_method :conservative
end
