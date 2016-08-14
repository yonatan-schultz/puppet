node default {
  include base
  include ldap_client
}

node /puppet/ inherits default {}

node /ns1/ inherits default {
	include ns
	include ns::master
	include dhcp
	include dhcp::authoritative
}

node /ns([2-9])+/ inherits default {
	include ns
	include ns::slave
}

node /ceph/ inherits default {}

node /ldap/ inherits default {}
