source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.1.0'

# server
gem 'thin'

# database
gem 'pg'

# form helpers
gem 'simple_form'

# assets
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'foundation-rails'
gem 'haml-rails'

# photo upload & storage
gem 'carrierwave'

# store assets in cloud
gem 'fog'

# image resizing
gem 'mini_magick'

# authentication
gem 'devise'
gem 'devise_invitable'

# better development data
gem 'faker'
gem 'faker-bloocher'
gem 'faker-stoked', github: 'fdschoeneman/faker-stoked', branch: 'master'

# authorization
gem 'pundit'

# State machine for demo
gem 'aasm'

# for managing heroku credentials
gem "figaro"

gem 'rails_12factor', group: :production

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development do

  gem 'guard-minitest'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :mri_21, :rbx]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-livereload'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false

end

group :test do

  gem 'minitest-spec-rails'
  gem 'minitest-given'

  # gem 'capybara-email'
  # gem 'minitest'
  # gem 'minitest-rails'
  # gem 'minitest-given'
  gem 'wrong'

  # pretty test output
  # gem 'ansi'
  # gem 'turn'

  # capybara save_and_open dependency
  gem 'launchy'

end

group :development, :test do
  gem 'spring'
  gem 'factory_girl_rails'
  gem 'pry-rails'
end

