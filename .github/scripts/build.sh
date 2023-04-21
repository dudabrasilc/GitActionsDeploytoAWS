#!/bin/bash
set -xe

# Build the Ruby on Rails application
cd exotic/backend
bundle install
bundle exec rake assets:precompile RAILS_ENV=production

# Build the React application
cd ../frontend
npm install
npm run build
