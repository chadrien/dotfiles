include homebrew

class chadrien::ruby {
  package { 'ruby':
    ensure => present
  }
}
