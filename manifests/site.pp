node default {
  include base
}

node /puppet/ inherits default {}

node /ns1/ inherits default {
	include ns
	include ns::master
}

node /ns([2-9])+/ inherits default {
	include ns
	include ns::slave
}

node /ceph/ inherits default {}
