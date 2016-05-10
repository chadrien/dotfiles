include homebrew

class chadrien::nodejs {
  package { 'node':
    ensure => present
  }
}
