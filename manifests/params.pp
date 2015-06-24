# Main parameter class for puppetdev
#
class puppetdev::params {
  $user  = hiera('pduser')
  $group = hiera('pdgroup')
}
