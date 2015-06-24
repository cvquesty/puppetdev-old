# Primary Vim module installations
#
class puppetdev::vim_modules (
  $user  = $::puppetdev::params::user,
  $group = $::puppetdev::params::group,
){
  # Install Powerline
  vcsrepo {"/home/${user}/.vim/powerline":
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/powerline/powerline.git',
    require  => Package['vim-enhanced'],
  }

  # Install Syntastic
  vcsrepo {"/home/${user}/.vim/syntastic":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/scrooloose/syntastic.git',
    require  => Package['vim-enhanced'],
  }


}
