#!/usr/bin/env bash
#puppet script to create ssh

file_line {'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
  line   =>  ' passwordAuthentication no',
}

file_line {'Deiclare identity file':
  ensure => "present",
  path   => '/etc/ssh/ssh_config',
  line   => ' identityile ~/.ssh/scool',
}
