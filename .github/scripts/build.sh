#!/bin/bash

cd $GITHUB_WORKSPACE/exotic/backend
bundle install
bundle exec rails assets:precompile RAILS_ENV=production
cd $GITHUB_WORKSPACE/exotic/frontend
npm install
npm run build
