require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'
require 'ostruct'


require_relative 'page_objects'

World(PageObjects)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://www.magazineluiza.com.br/'
end

Capybara.default_max_wait_time = 5
