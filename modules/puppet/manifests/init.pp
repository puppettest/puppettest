class puppet {
	file {'/usr/local/bin/papply':
		source => 'puppet:///modules/puppet/papply.sh', 
		mode => '0755',
	}
	file {'/usr/local/bin/pull-updates':
		source => 'puppet:///modules/puppet/pull-updates.sh',
		mode => '0755'
	}
	file {'/home/av/.ssh/id_rsa':
		source => 'puppet:///modules/puppet/ubuntu.priv',
		owner => 'av',
		mode => '0600',
	}
	cron { 'run-puppet':
		ensure => 'present',
		user => 'av',
		command => '/usr/local/bin/pull-updates',
		hour => '*',
		minute => '*/10',
	}
}
