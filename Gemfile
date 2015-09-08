# source "https://rubygems.org"
source 'http://ruby.taobao.org'

gemspec

gem "rake"
gem "actionpack",  "~> 4.0.12"
gem "activemodel", "~> 4.0.12"

group :test do
  gem "rspec", "~> 3.1.0"

  if ENV["CI"]
    gem "coveralls", require: false
  end
end

# add by cao
gem 'byebug'
