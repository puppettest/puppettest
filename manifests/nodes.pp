node 'ubuntu', 'ubuntu2'{
	file {
		'/tmp/hello':
		content => "Hello world!\n",
		}
	include puppet
}
