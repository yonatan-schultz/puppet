# == Class: dhcp
#
# Full description of class dhcp here.
#
class dhcp::authoritative {

	file { '/etc/dhcp/dhcpd.conf':
                ensure  => present,
                source  => 'puppet:///modules/dhcp/authoritative/dhcpd.conf',
                owner   => 'root',
                group   => 'root',
                mode    => 644,
		require => Package['isc-dhcp-server'],
        }
}
