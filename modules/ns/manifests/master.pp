class ns::master {

        file { '/etc/bind/named.conf.local':
		ensure  => present,
                source  => 'puppet:///modules/ns/master/named.conf.local',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        }

        file { '/etc/bind/named.conf.options':
		ensure  => present,
                source  => 'puppet:///modules/ns/master/named.conf.options',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        }

	file { '/etc/bind/zones':
		ensure => directory,
	} ->

	file { '/etc/bind/zones/db.192.168':
                ensure  => present,
                source  => 'puppet:///modules/ns/master/db.192.168',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        } ->

        file { '/etc/bind/zones/db.spacecamp.local':
                ensure  => present,
                source  => 'puppet:///modules/ns/master/db.spacecamp.local',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        }
}
