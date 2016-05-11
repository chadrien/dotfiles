include homebrew

class chadrien::ruby {
  class { 'ruby::global':
    version => '2.3.0'
  }

  ruby_gem { 'bundler':
    gem => 'bundler',
    ruby_version => '2.3.0'
  }
}
