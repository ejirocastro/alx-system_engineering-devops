#!/usr/bin/env bash
#puppet script to create ss

file_line {'Turn off passwwd auth':
  ensure => 'present',
  path 	 => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}

file_line {'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
}
