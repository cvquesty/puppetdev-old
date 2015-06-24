# Primary Vim module installations
#
class puppetdev::vim_modules {
  # Install Powerline
  vcsrepo {'/home/vagrant/.vim/bundle/powerline':
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/powerline/powerline.git',
    require  => Package['vim-enhanced'],
  }

  # Install Syntastic
  vcsrepo {'/home/vagrant/.vim/bundle/syntastic':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/scrooloose/syntastic.git',
    require  => Package['vim-enhanced'],
  }

  # Install  Tabular
  vcsrepo {'/home/vagrant/.vim/bundle/tabular':
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/godlygeek/tabular.git',
    require  => Package['vim-enhanced'],
  }

  # Install airline
  vcsrepo {'/home/vagrant/.vim/bundle/vim-airline':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/bling/vim-airline.git',
    require  => Package['vim-enhanced'],
  }

  # Install fugitive
  vcsrepo {'/home/vagrant/.vim/bundle/vim-fugitive':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/tpope/vim-fugitive.git',
    require  => Package['vim-enhanced'],
  }

  # Install Git Gutter
  vcsrepo {'/home/vagrant/.vim/bundle/vim-gitgutter':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/airblade/vim-gitgutter.git',
    require  => Package['vim-enhanced'],
  }

  # Install Indent Guides
  vcsrepo {'/home/vagrant/.vim/bundle/vim-indent-guides':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/nathanaelkane/vim-indent-guides.git',
    require  => Package['vim-enhanced'],
  }

  # Install Vim Puppet
  vcsrepo {'/home/vagrant/.vim/bundle/vim-puppet':
    ensure   => 'present',
    provider => 'git',
    source   => 'git://github.com/rodjek/vim-puppet.git',
    require  => Package['vim-enhanced'],
  }

  # Install Vim Trailing Whitespace
  vcsrepo {'/home/vagrant/.vim/bundle/vim-trailing-whitespace':
    ensure   => 'present',
    provider => 'git',
    source   => 'https://github.com/bronson/vim-trailing-whitespace.git',
    require  => Package['vim-enhanced'],
  }
}
