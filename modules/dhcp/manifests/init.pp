# == Class: dhcp
#
# Full description of class dhcp here.
#
class dhcp {

	package { 'isc-dhcp-server':
		ensure => installed,
	}

}
