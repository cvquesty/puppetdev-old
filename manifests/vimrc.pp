# Main PuppetDev Manifest to place the .vimrc
#
class puppetdev::vimrc (
	$user  = $puppetdev::params::user,
	$group = $puppetdev::params::group,
	$home  = $puppetdev::params::home,
){

	# Place the .vimrc
	file { "${home}/$user/.vimrc":
		ensure => 'present',
		owner  => $user,
		group  => $group,
		mode   => '0644',
		source => 'puppet:///modules/puppetdev/vimrc',
	}

	# Make a place for the engineer to manage his own .vimrc settings
	file {"${home}/${user}/.vimrc.custom":
    ensure => 'present',
		owner  => $user,
		group  => $group,
		mode   => '0644',
  }

}
