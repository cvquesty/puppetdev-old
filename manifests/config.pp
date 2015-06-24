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
  exec {'getpathogen':
    path    => '/usr/bin',
    command => 'curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim',
    returns => ['0','23'],
    require => File['/home/vagrant/.vim/autoload'],
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
    command => '/usr/bin/chown -R vagrant /home/vagrant/.vim',
    require => Class['puppetdev::vim_modules'],
  }

  exec {'groupit':
    path    => '/usr/bin',
    command => '/usr/bin/chgrp -R vagrant /home/vagrant/.vim',
    require => Class['puppetdev::vim_modules'],
  }
}
