# Main vim manifest for PuppetDev module
#
class puppetdev::vim {
  # Remove vim-minimal
  package {'vim-minimal':
    ensure => 'absent',
  }

  # Install vim-enhanced
  package {'vim-enhanced':
    ensure  => 'present',
    require => Package['vim-minimal'],
  }
}
