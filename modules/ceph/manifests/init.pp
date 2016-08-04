# == Class: ceph
#
# Full description of class ceph here.
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class ceph {

	file { "/etc/apt/sources.list":
		content => "deb http://mirrordirector.raspbian.org/raspbian/ testing main contrib non-free rpi",
	}->

	file { "/etc/apt/sources.list.d/ceph.list":
		ensure	=> present,
		contents => "deb http://ceph.com/debian-hammer/ jessie main"
	}->

	exec { "apt-get update":
		command => "/usr/bin/apt-get update",
	}->
	
	exec { "apt-get upgrade":
		command => "/usr/bin apt-get upgrade -y",
	}->

	$packages = ['ceph', 'ceph-common', 'ceph-deploy']
	package { $packages: ensure => 'installed' }

}
