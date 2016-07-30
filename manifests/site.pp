node default {
  include base
}

node /puppet/ inherits default {}

node /ns([2-9])+/ inherits default {
	include ns::slave
}

node /ceph/ inherits default {}
