class chadrien::git {
  include git
  package { 'tig': }

  git::config::global { 'alias.st':
    value  => 'status -sb'
  }
  git::config::global { 'alias.purr':
    value  => 'pull --rebase'
  }
  git::config::global { 'alias.lg':
    value  => "log --pretty=format:'%Cred%h%Creset -%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
  }
  git::config::global { 'alias.ci':
    value  => 'commit'
  }
  git::config::global { 'alias.cp':
    value  => 'cherry-pick -ex'
  }
  git::config::global { 'alias.co':
    value  => 'checkout'
  }
  git::config::global { 'alias.go':
    value  => '!f() { [ -z $1 ] && echo "Usage: git go <branch>" && exit 1; git branch $1 2>/dev/null; git checkout $1; }; f'
  }
  git::config::global { 'alias.br':
    value  => 'branch -v'
  }
  git::config::global { 'alias.bra':
    value  => 'branch -va'
  }
  git::config::global { 'alias.brr':
    value  => 'branch -vr'
  }
  git::config::global { 'alias.master':
    value  => 'checkout master'
  }
  git::config::global { 'alias.cl':
    value  => 'clone'
  }
  git::config::global { 'alias.pop':
    value  => 'stash pop'
  }
  git::config::global { 'alias.wip':
    value  => '!git add -u && git add . && git commit -m"WIP"'
  }
  git::config::global { 'alias.unwip':
    value  => '!git reset --soft HEAD~ && git reset HEAD --'
  }
  git::config::global { 'alias.unadd':
    value  => 'reset HEAD --'
  }
}
