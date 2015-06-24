# Main PuppetDev Manifest to place the .vimrc file
#
class puppetdev::vimrc (
	$user  = "$::puppetdev::params::user",
	$group = "$::puppetdev::params::group",
){
	# Place the .vimrc
	file {"/home/${user}/.vimrc":
		ensure => 'present',
		owner  => $user,
		group  => $group,
		mode   => '0644',
		source => 'puppet:///modules/puppetdev/vimrc',
	}
}
