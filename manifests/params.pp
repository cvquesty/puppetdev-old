# Main parameter class for puppetdev
#
class puppetdev::params {
  $user  = 'vagrant'
  $group = 'vagrant'
  $home = '/home'
   Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
}
