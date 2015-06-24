# Main configuration manifest for vim setup
#
class puppetdev::config {

  # Create User's .vim infrastructure and get pathogen
  # and create the autoload directory
  vcsrepo {'/home/vagrant/.vim/':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-pathogen',
    require  => Package['vim-enhanced'],
    before   => File['/home/vagrant/.vim/bundle',
  }

  # Add bundle subdirectory
  file {'/home/vagrant/.vim/bundle':
    ensure => 'directory',
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => '0755',
  }

  # Set Permissions for vim modules
  exec {'ownit':
    path    => '/usr/bin',
    command => '/usr/bin/chown -R vagrant /home/vagrant/.vim',
    require => Class['puppetdev::vim_modules'],
  }

  exec {'groupit':
    path    => '/usr/bin',
    command => '/usr/bin/chgrp -R vagrant /home/vagrant/.vim',
    require => Class['puppetdev::vim_modules'],
  }
}
