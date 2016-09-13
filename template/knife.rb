node_name                '<username>'
client_key               ::File.expand_path("../<username>.pem", __FILE__)
validation_client_name   '<orgname>-validator'
validation_key           ::File.expand_path("../<orgname>-validator.pem", __FILE__)
chef_server_url          'https://<servername>/organizations/<orgname>'
