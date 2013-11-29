log_level        :auto
log_location     STDOUT
chef_server_url  "https://api.opscode.com/organizations/rcarroll_weblinc"
validation_client_name "rcarroll_weblinc-validator"
node_name "vagrant"
Ohai::Config[:plugin_path] << '/etc/ohai/plugins'