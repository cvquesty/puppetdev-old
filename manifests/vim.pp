# Main vim manifest for PuppetDev module
#
class puppetdev::vim {
  # Install vim-enhanced
  package {'vim-enhanced':
    ensure  => 'present',
    require => Package['vim-minimal'],
  }
}
