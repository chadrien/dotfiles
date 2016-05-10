# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.11.1"
github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"
github "stdlib", "4.7.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "inifile", "1.4.1", :repo => "puppetlabs/puppetlabs-inifile"

github "sudo"
github "git"
github "repository"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "homebrew"
github "brewcask"
github "chrome"
github "iterm2"
github "atom"
