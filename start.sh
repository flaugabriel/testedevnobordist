 
gem install bundler
bundle update
RAILS_ENV=production bundle exec rails assets:precompile
RAILS_ENV=production bundle exec rails webpacker:compile
nohup rails s  -b 0.0.0.0 -p 3002 -e  production &