include homebrew

class chadrien::ruby {
  package { 'ruby':
    ensure => present
  }
  class { 'ruby::global':
    version => 'system'
  }
}
