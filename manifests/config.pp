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

    # Add bundle subdirectory
    file {'/home/vagrant/.vim/bundle':
      ensure  => 'directory',
      owner   => 'vagrant',
      group   => 'vagrant',
      mode    => '0755',
      require => File['/home/vagrant/.vim'],
    }
}
