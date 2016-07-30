class ns::slave {

        file { '/etc/bind/named.conf.local':
		ensure  => present,
                source  => 'puppet:///modules/ns/slave/named.conf.local',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        }

        file { '/etc/bind/named.conf.options':
		ensure  => present,
                source  => 'puppet:///modules/ns/slave/named.conf.options',
                owner   => 'root',
                group   => 'bind',
                mode    => 644,
        }
}
