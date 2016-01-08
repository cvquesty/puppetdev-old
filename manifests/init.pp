# == Class: puppetdev
#
# Full description of class puppetdev here.
# Copyright 2015 Jerald Sheets, unless otherwise noted.
#
class puppetdev (
  $user    = $::puppetdev::params::user,
  $group   = $::puppetdev::params::group,
) inherits puppetdev::params {

  include puppetdev::config
  include puppetdev::vim
  include puppetdev::vim_modules
  include puppetdev::vimrc
  include puppetdev::profile

}
