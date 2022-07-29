server '3.114.217.24', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/kei/.ssh/id_rsa'