#puppet script to create ssh

file line {'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   =>  'passwordAuthentication no',
}

file_line {'decine identity file',
  ensure => "present",
  path   => '/etc/ssh/ssh_config',
  line   => 'identityile ~/.ssh/scool',
}
