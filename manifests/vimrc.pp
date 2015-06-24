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
}
