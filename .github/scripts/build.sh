#!/bin/bash

set -e

cd $GITHUB_WORKSPACE/exotic/backend
sudo apt-get update
sudo apt-get install -y ruby-full
gem install bundler
bundle install
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production

cd $GITHUB_WORKSPACE/exotic/frontend
sudo apt-get update
sudo apt-get install -y nodejs npm
npm install
npm run build
