# == Class: dhcp
#
# Full description of class dhcp here.
#
class dhcp::authoritative {

	service {'isc-dhcp-server':
	    ensure  => 'running',
	    enable  => true,
	    require => Package['isc-dhcp-server'],
	}

	file { '/etc/dhcp/dhcpd.conf':
		notify	=> Service['isc-dhcp-server'],
                ensure  => present,
                source  => 'puppet:///modules/dhcp/authoritative/dhcpd.conf',
                owner   => 'root',
                group   => 'root',
                mode    => 644,
		require => Package['isc-dhcp-server'],
        }
}
