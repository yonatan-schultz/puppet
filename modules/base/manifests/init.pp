class base {

       	file { '/etc/motd':
                ensure  => present,
                source  => 'puppet:///modules/base/motd',
                owner   => 'root',
                group   => 'root',
                mode    => 644,
        }

       	file { '/etc/sudoers':
                ensure  => present,
                source  => 'puppet:///modules/base/sudoers',
                owner   => 'root',
                group   => 'root',
                mode    => 440,
        }

       	user { 'yschultz':
       		ensure         => present,
       		purge_ssh_keys => true,
       		home   	       => '/home/yschultz',
       		managehome     => true,
       		password       => 'XXXXX',
       	}

       	ssh_authorized_key { 'yschultz@newrelic.com':
       		user => 'yschultz',
       		type => 'ssh-rsa',
       		key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD4BCIJXoNWwKUsvotR1YKPRnNhVD0hwnmo5AdfvTYPVddrmtyCFLlnbDHt0Ht/kJTLEX0fuSmtR6aR7eJu7nA/YzUGso70pkjZ/uX6eVXR8cynAuC3yqAKn1uN+h7E1zPuPQw5uaQvZkDgAvURiZ2QtLIL9HnDipqG9AFU60wowYDbNsGF0Q9fKOZrQfJI8Za59wADVheeitaQS/nPyr/i6XcsqzLKPAKX+TqjlpGgG5cdmG2iFEtMJSpWTMQrlu/lGmNBOI8QGJqaOtoD8OMJVEJIvdGG18swFdNrwRT7yKGklWzbgjX8+uoQtXtAfVk+jFjltuyjhGJWqayBN+ul',
       	}
}
