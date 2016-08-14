# == Class: ldap_client
#
# Full description of class ldap here.
#
class ldap_client {

	$packages = ['libpam-ldapd','libnss-ldapd']
	package { $packages: ensure => 'installed' }

	service { 'nslcd':
	  ensure => 'running',
	  enable  => true,
          require => Package['libpam-ldapd']
	} ->

	service { 'nscd':
	  ensure => 'running',
	  enable => 'true',
	} 

        file { '/etc/libnss-ldap.conf':
		ensure  => present,
                source  => 'puppet:///modules/ldap_client/libnss-ldap.conf',
                owner   => 'root',
		group	=> 'root',
                mode    => 644,
		require => Package['libnss-ldapd'],
        }

        file { '/etc/nsswitch.conf':
                ensure  => present,
                source  => 'puppet:///modules/ldap_client/nsswitch.conf',
                owner   => 'root',
                group   => 'root',
                mode    => 644,
                require => Package['libnss-ldapd'],
        }
}
