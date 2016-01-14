# This manifest pulls in the plugins to be installed and
# clones them to the right directory and creates a configuraiton
# snippet for each to turn into the user's .vimrc
class puppetdev::plugins {

  $user    = $::puppetdev::params::user
  $group   = $::puppetdev::params::group
  $homedir = $::puppetdev::params::homedir
  $plugins = $::puppetdev::params::plugins

  # Frame up the file
  $dotvimrc = "${homedir}/.vimrc"

  concat { $dotvimrc:
    owner => $user,
    group => $group,
    mode  => '0644',
  }

  # Setup the header to the .vimrc
  concat::fragment { 'header':
    target => $dotvimrc,
    source => 'puppet:///modules/puppetdev/header.txt',
  }

  # Create the .vimrc.custom for User-configurable options
  exec { 'vimrc_custom':
    path    => '/bin:/usr/bin',
    command => "/bin/touch ${homedir}/.vimrc.custom",
    unless  => "/usr/bin/test -f ${homedir}/.vimrc.custom",
  }

  # Make sure the user has access to the .vimrc.custom
  file { "${homedir}/.vimrc.custom":
    ensure  => 'file',
    owner   => $user,
    group   => $group,
    mode    => '0644',
    require => Exec[ 'vimrc_custom' ],
  }

  # Set up the iterator to run over $plugins
  $plugins.each |$plugin, $url| {
    vcsrepo { "${homedir}/.vim/bundle/${plugin}":
      ensure   => 'present',
      provider => 'git',
      source   => $url,
      require  => Package[ 'vim-enhanced' ],
    }

    # Add the rainbow_parenthesis config to the .vimrc
    concat::fragment { $plugin:
      target => "${homedir}/.vimrc",
      source => "puppet:///modules/puppetdev/${plugin}.txt",
    }
  }
}
