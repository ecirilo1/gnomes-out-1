require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/bundler"
require 'capistrano/rails'
require 'capistrano/passenger'
require "capistrano/rbenv"
set :rbenv_type, :user
set :rbenv_ruby, '2.7.3'

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

# require 'capistrano/passenger'
# require 'capistrano/rbenv'
#
# require "capistrano/chruby"
# require "capistrano/rails/assets"
# require "capistrano/rails/migrations"
# require "capistrano/passenger"

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
