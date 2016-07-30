# == Class: ns
#
# Full description of class ns here.
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class ns {

	$packages = ['bind9', 'bind9utils', 'bind9-doc']
	package { $packages: ensure => 'installed' }

}
