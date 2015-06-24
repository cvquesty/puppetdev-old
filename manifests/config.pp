# Main configuration manifest for vim setup
#
class puppetdev::config (
  $user  = puppetdev::params::user,
  $group = puppetdev::params::group,
){
    # Create User's .vim infrastructure
    file {"/home/${user}/.vim":
      ensure => 'directory',
      owner  => $user,
      group  => $group,
      mode   => '0755',
    }

    # Add autoload subdirectory
    file {"/home/${user}/.vim/autoload":
      ensure  => 'directory',
      owner   => $user,
      group   => $group,
      mode    => '0755',
      require => File["/home/${user}/.vim"],
    }

    # Add bundle subdirectory
    file {"/home/${user}/.vim/bundle":
      ensure  => 'directory',
      owner   => $user,
      group   => $group,
      mode    => '0755',
      require => File["/home/${user}/.vim"],
    }
}
