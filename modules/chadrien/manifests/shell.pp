class chadrien::shell {
  include zsh

  repository { "/Users/${::boxen_user}/.oh-my-zsh":
    source => 'robbyrussell/oh-my-zsh'
  }

  package {
    'ack':;
    'autoenv':;
    'gnu-sed': install_options => ['--with-default-names'];
    'httpie':;
    'thefuck':;
    'tmux':;
    'tree':;
  }

  ruby_gem {
    'bropages': gem => 'bropages', ruby_version => '2.3.0';
    'tmuxinator': gem => 'bropages', ruby_version => '2.3.0';
  }

  file { "/Users/${::boxen_user}/.zshrc":
    ensure => file,
    content => template('chadrien/zshrc.erb')
  }

  boxen::env_script { 'autoenv':
    content  => template('chadrien/autoenv.sh.erb'),
    priority => highest,
  }
}
