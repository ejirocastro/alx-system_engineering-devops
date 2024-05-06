#!/usr/bin/env bash
#puppet script to create ss

file {'/etc/ssh/ssh_config':
  ensure => 'present'
}

file_line {'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'passwordAuthentication no',
  match  => '^#passwordAuthentication',

}

file_line {'Deiclare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/scool',
  match  => '^#IdentityFile',
}
