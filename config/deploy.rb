lock "~> 3.16.0"

set :application, "testcapi"
set :repo_url, "git@github.com:ecirilo1/gnomes-out-1.git"


set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 5
