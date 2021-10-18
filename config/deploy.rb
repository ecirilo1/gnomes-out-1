lock "~> 3.16.0"

# before 'rails:console', :set_remote_rbenv_path

set :application, "testcapi"
set :repo_url, "git@github.com:ecirilo1/gnomes-out-1.git"


set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 5
set :default_env, { home: "~/.rbenv/bin/rbenv init:$HOME" }
# config/deploy.rb

set :rbenv_type, :user # or :system, or :fullstaq (for Fullstaq Ruby), depends on your rbenv setup
set :rbenv_ruby, '2.7.3'
# task :set_remote_rbenv_path do
# set :rbenv_path, '/home/deploy/.rbenv/bin/rbenv'
# end
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value
