#source "http://rubygems.org"
source :rubygems

gem 'rake'
gem 'sinatra'
gem 'thin'
gem 'rack'
gem 'sequel'
gem 'haml'
gem 'sass'

group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
end


### windows specific gems ###
gem 'win32-process', :platforms => [:mswin, :mingw]
gem 'win32console', :platforms => [:mswin, :mingw]
gem 'eventmachine', "1.0.0.beta.4.1", :platforms => [:mswin, :mingw]


