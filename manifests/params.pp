# Main parameter class for PuppetDev
#
class puppetdev::params {

  $user    = 'vagrant'
  $group   = 'vagrant'

  # Accommodate the Root user
  if $user != 'root' {
    $homedir = "/home/${user}"
  }
  else { $homedir == '/root'
  }

  # The plugins to install into vim
  $plugins = {
    "powerline" => "https://github.com/powerline/powerline.git",
    "syntastic" => "https://github.com/scrooloose/syntastic.git",
    "tabular" => "https://github.com/godlygeek/tabular.git",
    "vim-airline" => "https://github.com/bling/vim-airline.git",
    "vim-fugitive" => "https://github.com/tpope/vim-fugitive.git",
    "vim-gitgutter" => "https://github.com/airblade/vim-gitgutter.git",
    "vim-indent-guides" => "https://github.com/nathanaelkane/vim-indent-guides.git",
    "vim-puppet" => "https://github.com/rodjek/vim-puppet.git",
    "vim-trailing-whitespace" => "https://github.com/bronson/vim-trailing-whitespace.git",
    "rainbow_parenthesis" => "https://github.com/kien/rainbow_parentheses.vim"
  }

}
