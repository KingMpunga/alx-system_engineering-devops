# Define SSH client configuration file path
$ssh_config_file = "/etc/ssh/ssh_config"

# Ensure SSH client configuration to refuse password authentication
file_line { 'Turn off passwd auth':
  path   => $ssh_config_file,
  line   => 'PasswordAuthentication no',
  match  => '^#?PasswordAuthentication',
}

# Ensure SSH client configuration to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path   => $ssh_config_file,
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^#?IdentityFile',
}

