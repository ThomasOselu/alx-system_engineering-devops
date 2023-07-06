#!/usr/bin/env bash
# puppet script - configure ssh authentication:

file { 'etc/ssh/ssh_config':
	ensure => present,
content =>"

	#ssh client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no",
}
