# Main configuration manifest for vim setup
#
class puppetdev::config {
  # Create User's .vim infrastructure
  file {'/home/vagrant/.vim':
    ensure => 'directory',
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => '0755',
  }

  # Add autoload subdirectory
  file {'/home/vagrant/.vim/autoload':
    ensure  => 'directory',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '0755',
    require => File['/home/vagrant/.vim'],
  }

  # Add pathogen to autoload
  file {'/home/vagrant/.vim/autoload/pathogen.vim':
    ensure  => 'present',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '0755',
    source  => 'puppet:///modules/puppetdev/pathogen.vim',
    require => File['/home/vagrant/.vim/autoload',
  }

  # Add bundle subdirectory
  file {'/home/vagrant/.vim/bundle':
    ensure  => 'directory',
    owner   => 'vagrant',
    group   => 'vagrant',
    mode    => '0755',
    require => File['/home/vagrant/.vim'],
  }

  # Set Permissions for vim modules
  exec {'ownit':
    path    => '/usr/bin',
    command => '/usr/bin/chown -R vagrant /home/vagrant/.vim/bundle',
    require => Class['puppetdev::vim_modules'],
  }

  exec {'groupit':
    path    => '/usr/bin',
    command => '/usr/bin/chgrp -R vagrant /home/vagrant/.vim/bundle',
    require => Class['puppetdev::vim_modules'],
  }
}
