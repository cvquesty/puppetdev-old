# Main PuppetDev Manifest to place the .vimrc file
#
class puppetdev::vimrc {
	# Place the .vimrc
	file { "/home/${::puppetdev::params::user}/.vimrc":
		ensure => 'present',
		owner  => "${::puppetdev::params::user}",
		group  => "${::puppetdev::params::group}",
		mode   => '0644',
		source => 'puppet:///modules/puppetdev/vimrc',
	}
}
