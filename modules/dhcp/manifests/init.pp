# == Class: dhcp
#
# Full description of class dhcp here.
#
class dhcp {

	package { 'isc-dhcp-server':
		ensure => installed,
	}->

	file { '/etc/default/isc-dhcp-server':
                ensure  => present,
                source  => 'puppet:///modules/dhcp/isc-dhcp-server',
                owner   => 'root',
                group   => 'root',
                mode    => 644,
        }
}
