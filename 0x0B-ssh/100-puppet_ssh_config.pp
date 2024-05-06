# Ensure SSH client configuration file
file { '/etc/ssh/ssh_config':
  ensure => 'present',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}

# Configure SSH client to use the private key
file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}

# Disable password authentication
file_line { 'Turn off password authentication':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}
