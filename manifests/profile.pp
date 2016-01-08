# Manifest to add vim alias to profile
#
class puppetdev::profile {
  $user  = $::puppetdev::params::user

  file_line { 'vim_alias':
    path => "/home/${user}/.bash_profile",
    line => 'alias vi=vim',
  }
}
