# Main configuration manifest for vim setup
#
class puppetdev::config {
    # Create User's .vim infrastructure
    file {"/home/${::puppetdev::params::user}/.vim":
      ensure => 'directory',
      owner  => "${::puppetdev::params::user}",
      group  => "${::puppetdev::params::group}",
      mode   => '0755',
    }

    # Add autoload subdirectory
    file {"/home/${::puppetdev::params::user}/.vim/autoload":
      ensure  => 'directory',
      owner   => "${::puppetdev::params::user}",
      group   => "${::puppetdev::params::group}",
      mode    => '0755',
      require => File["/home/${::puppetdev::params::user}/.vim"],
    }

    # Add bundle subdirectory
    file {"/home/${::puppetdev::params::user}/.vim/bundle":
      ensure  => 'directory',
      owner   => "${::puppetdev::params::user}",
      group   => "${::puppetdev::params::group}",
      mode    => '0755',
      require => File["/home/${::puppetdev::params::user}/.vim"],
    }
}
