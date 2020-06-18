require 'capybara/rspec'


Capybara.default_driver =
  case ENV['BROWSER']
  when 'firefox'
    :selenium
  when 'chrome'
    :selenium_chrome
  else
    :selenium_chrome
  end

Capybara.save_path = 'screenshots/'
Capybara.default_max_wait_time = ENV.fetch('MAX_WAIT_TIME_IN_SECONDS') { 15 }.to_i
