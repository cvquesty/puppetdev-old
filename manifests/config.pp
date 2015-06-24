# Main configuration manifest for vim setup
#
class puppetdev::config {

  # Create User's .vim infrastructure and get pathogen
  vcsrepo {'/home/vagrant/.vim/':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-pathogen',
    require  => Package['vim-enhanced'],
  }

  # Add autoload subdirectory
  file {'/home/vagrant/.vim/autoload':
    ensure  => 'directory',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '0755',
    require => Vcsrepo['/home/vagrant/.vim'],
  }

  # Add bundle subdirectory
  file {'/home/vagrant/.vim/bundle':
    ensure  => 'directory',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '0755',
    require => Vcsrepo['/home/vagrant/.vim'],
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
