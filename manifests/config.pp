# Main configuration manifest for vim setup
#
class puppetdev::config (
  $user  = "$::puppetdev::params::user",
  $group = "$::puppetdev::params::group",
){

  # Create User's .vim infrastructure and get pathogen
  # and create the autoload directory
  vcsrepo {"/home/${user}/.vim/":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-pathogen',
    require  => Package['vim-enhanced'],
    before   => File["/home/${user}/.vim/bundle"],
  }

  # Add bundle subdirectory
  file {"/home/${user}/.vim/bundle":
    ensure => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0755',
  }

  # Set Permissions for vim modules
  exec {'ownit':
    path    => '/usr/bin',
    command => "/usr/bin/chown -R $user /home/$user/.vim",
    require => Class['puppetdev::vim_modules'],
  }

  exec {'groupit':
    path    => '/usr/bin',
    command => "/usr/bin/chgrp -R $group /home/$user/.vim",
    require => Class['puppetdev::vim_modules'],
  }
}
