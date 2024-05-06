#puppet script to create ssh

file_line {'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   =>  'passwordAuthentication no',
}

file_line {'Declare identity file':
  ensure => "present",
  path   => '/etc/ssh/ssh_config',
  line   => 'identityile ~/.ssh/scool',
}
