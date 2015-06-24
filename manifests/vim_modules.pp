# Primary Vim module installations
#
class puppetdev::vim_modules (
  $user  = $::puppetdev::params::user,
  $group = $::puppetdev::params::group,
){
  # Install Powerline
  vcsrepo {"/home/${::user}/.vim/bundle/powerline":
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/powerline/powerline.git',
    require  => Package['vim-enhanced'],
  }

  # Install Syntastic
  vcsrepo {"/home/${::user}/.vim/bundle/syntastic":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/scrooloose/syntastic.git',
    require  => Package['vim-enhanced'],
  }

  # Install  Tabular
  vcsrepo {"/home/${::user}/.vim/bundle/tabular":
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/godlygeek/tabular.git',
    require  => Package['vim-enhanced'],
  }

  # Install airline
  vcsrepo {"/home/${::user}/.vim/bundle/vim-airline":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/bling/vim-airline.git',
    require  => Package['vim-enhanced'],
  }

  # Install fugitive
  vcsrepo {"/home/${::user}/.vim/bundle/vim-fugitive":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-fugitive.git',
    require  => Package['vim-enhanced'],
  }

  # Install Git Gutter
  vcsrepo {"/home/${::user}/.vim/bundle/vim-gitgutter":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/airblade/vim-gitgutter.git',
    require  => Package['vim-enhanced'],
  }

  # Install Indent Guides
  vcsrepo {"/home/${::user}/.vim/bundle/vim-indent-guides":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/nathanaelkane/vim-indent-guides.git',
    require  => Package['vim-enhanced'],
  }

  # Install Vim Puppet
  vcsrepo {"/home/${::user}/.vim/bundle/vim-puppet":
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/rodjek/vim-puppet.git',
    require  => Package['vim-enhanced'],
  }

  # Install Vim Trailing Whitespace
  vcsrepo {"/home/${::user}/.vim/bundle/vim-trailing-whitespace":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/bronson/vim-trailing-whitespace.git',
    require  => Package['vim-enhanced'],
  }

  # Install Rainbow Parenthesis
  vcsrepo {"/home/${::user}/.vim/bundle/rainbow_parenthesis.vim":
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/kien/rainbow_parentheses.vim',
    require  => Package['vim-enhanced'],
  }
}
