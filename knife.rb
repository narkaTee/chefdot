CHEF_ENV = ENV['CHEF_ENV'] || "default" unless defined? CHEF_ENV
CHEF_ENV_KNIFE = File.expand_path("../#{CHEF_ENV}/knife.rb", __FILE__) unless defined? CHEF_ENV_KNIFE

log_level :info
log_location STDOUT
syntax_check_cache_path File.expand_path("~/.chef/syntax_check_cache")
knife[:editor] = "/usr/bin/vim"
knife[:vault_mode] = 'client'
trusted_certs_dir File.expand_path("~/.chef/trusted_certs")

if ::File.exist?(CHEF_ENV_KNIFE)
    Chef::Config.from_file(CHEF_ENV_KNIFE)
else
    raise ArgumentError, "The CHEF_ENV's '#{CHEF_ENV}' config file '#{CHEF_ENV_KNIFE}' could not be found! "
end
