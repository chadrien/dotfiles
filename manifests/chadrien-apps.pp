include brewcask

class chadrien::apps {
  include chrome

  include iterm2::stable
  include iterm2::colors::solarized_dark

  include atom
  atom::package {
    'project-manager':;
    'language-docker':;
    'git-plus':;
    'editorconfig':;
    'atom-material-ui':;
    'atom-material-syntax':;
  }

  package { 'amethyst': provider => 'brewcask' }
  package { 'dash': provider => 'brewcask' }
  package { 'google-chrome': provider => 'brewcask' }
  package { 'intellij-idea': provider => 'brewcask' }
}
