# == Class: ceph
#
# Full description of class ceph here.
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class ceph {

	$packages = ['ceph', 'ceph-common']
	package { $packages: ensure => 'installed' }

}
