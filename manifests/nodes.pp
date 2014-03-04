node 'ubuntu'{
	file {
		'/tmp/hello':
		content => "Hello world!\n",
		}

}
