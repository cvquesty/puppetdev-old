# Final Permissions and ownerships change
#
class puppetdev::post {

  $user    = $::puppetdev::params::user
  $group   = $::puppetdev::params::group
  $homedir = $::puppetdev::params::homedir

  # Change all perms on the created files/directories to the user/group
  exec { 'ownit':
    path    => '/bin',
    command => "/bin/chown -R ${user} ${homedir}/.vim",
    require => Class[ 'puppetdev::plugins' ],
  }

  exec { 'groupit':
    path    => '/bin',
    command => "/bin/chown -R ${user} ${homedir}/.vim",
    require => Exec[ 'ownit' ],
  }

}
