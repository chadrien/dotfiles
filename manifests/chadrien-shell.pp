class chadrien::shell {
  include zsh

  repository { "/Users/${::boxen_user}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh'
  }

  package {
    'ack':;
    'gnu-sed': install_options => ['--with-default-names'];
    'httpie':;
    'thefuck':;
    'tmux':;
    'tree':;
  }
}
