# Main vim manifest for PuppetDev module
#
class puppetdev::vim {
  # Make sure the git provider is available
  package {'git':
    ensure => 'present',
  }

  # Install vim-enhanced
  package {'vim-enhanced':
    ensure  => 'present',
    require => Package['git'],
  }
}
