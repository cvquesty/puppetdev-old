# Class: puppetdev
# ===========================
#
# Author Jerald M. Sheets jr. <questy@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2016 Jerald M. Sheets jr., unless otherwise noted.
#
class puppetdev (
  $user    = $::puppetdev::params::user,
  $group   = $::puppetdev::params::group,
  $homedir = $::puppetdev::params::homedir,
) inherits puppetdev::params {

  include puppetdev::prep
  include puppetdev::plugins
  include puppetdev::post

}
