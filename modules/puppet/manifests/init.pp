class puppet {
	file {'/usr/local/bin/papply':
		source => 'puppet:///modules/puppet/papply.sh', 
		mode => '0755',
	}

}
