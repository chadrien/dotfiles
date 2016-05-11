require boxen::bootstrap
require chadrien::nodejs
require chadrien::python
require chadrien::ruby
require chadrien::apps
require chadrien::shell
require chadrien::git
require projects::all

node default {
  include git
}
