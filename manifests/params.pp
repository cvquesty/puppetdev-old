# Main Parameters file for PuppetDev module
#
class puppetdev::params {
  $user  = hiera('pduser')
  $group = hiera('pdgroup')
}
