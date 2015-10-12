# Main configuration manifest for vim setup
#
class puppetdev::config (
  $user  = $puppetdev::params::user,
  $group = $puppetdev::params::group,
  $home  = $puppetdev::params::home,
){

  # Create User's .vim infrastructure and get pathogen
  # and create the autoload directory
  vcsrepo {"${home}/${user}/.vim/":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-pathogen',
    require  => Package['vim-enhanced'],
    before   => File["${home}/${user}/.vim/bundle"],
  }

  # Add bundle subdirectory
  file {"${home}/${user}/.vim/bundle":
    ensure => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0755',
  }

  # Set Permissions for vim modules
  exec {'ownit':
    onlyif  => "find ${home}/${user}/.vim ! -user ${user} -or ! -group ${group}",
    command => "chown -R ${user}:${group} ${home}/${user}/.vim",
    require => Class['puppetdev::vim_modules'],
  }

}
