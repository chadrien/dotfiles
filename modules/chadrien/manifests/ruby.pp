include homebrew

define ruby_gem {
  exec { "install gem ${name}":
    command => "gem install ${name}",
    unless => "gem install ${name}"
  }
}

class chadrien::ruby {
  package { 'ruby':
    ensure => present
  }

  ruby_gem { 'bundler':; }
}
