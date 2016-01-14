# This manifest performs the preparatory steps to configuring
# puppetdev for the user
class puppetdev::prep {

  $user    = $::puppetdev::params::user
  $group   = $::puppetdev::params::group
  $homedir = $::puppetdev::params::homedir

  # Place the Pathogen Vim Plugin
  vcsrepo { "${homedir}/.vim/":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-pathogen.git',
    require  => Package['vim-enhanced'],
    before   => File["${homedir}/.vim/bundle"],
  }

  # Make sure the permissions on .vim are correct
  file { "${homedir}/.vim":
    ensure => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0755',
  }

  # Add the bundle subdirectory to hold the vim plugins
  file { "${homedir}/.vim/bundle":
    ensure => 'directory',
    owner  => $user,
    group  => $group,
    mode   => '0755',
  }

  # Install required packages for puppetdev to function
  # Make sure the Git provider is available
  package { 'git':
    ensure => 'present',
  }

  # Install vim-enhanced
  package { 'vim-enhanced':
    ensure  => 'present',
    require => Package[ 'git' ],
  }

  # Add bash_profile entry to ensure vim and not vi is being used
  file_line { 'vim_alias':
    path => "${homedir}/.bash_profile",
    line => 'alias vi=vim',
  }
}
