# Main PuppetDev Manifest to place the .vimrc file
#
class puppetdev::vimrc {
	# Place the .vimrc
	file { '/home/vagrant/.vimrc':
		ensure => 'present',
		owner  => 'vagrant',
		group  => 'vagrant',
		mode   => '0644',
		source => 'puppet:///modules/puppetdev/vimrc',
	}

	# Make a place for the engineer to manage his own .vimrc settings
	exec { 'vimrc.custom':
		path    => '/usr/bin'
		command => '/usr/bin/touch /home/vagrant/.vimrc.custom',
		unless  => '/usr/bin/test -f /home/vagrant/.vimrc.custom',
	}
}
