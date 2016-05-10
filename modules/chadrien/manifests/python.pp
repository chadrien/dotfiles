include homebrew

class chadrien::python {
  define install_python {
    package { $name:
      ensure => present
    }
  }
  install_python { ['python', 'python3']:; }
}
