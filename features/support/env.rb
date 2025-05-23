require 'rubygems'
require 'rspec'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
# require 'capybara-chrome_dev_tools'
require_relative '../support/buttons.rb'
require_relative '../pages/channel KasBon.rb'

include RSpec::Matchers

Capybara.register_driver :iphone do |app|
  # Capybara::ChromeDevTools.enabled = true
  # dev_tools.on "Network.requestWillBeSent" do |arg|
  #   request = OpenStruct.new(arg["request"])
  #   puts "Requesting #{request.url}"
  # end
  
  # dev_tools.on "Network.responseReceived" do |arg|
  #   response = OpenStruct.new(arg["response"])
  #   puts "response #{response.url}"
  # end
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'goog:chromeOptions' => {
        'args': %w[headless enable-features=NetworkService,NetworkServiceInProcess],
        'mobileEmulation' => {
          'deviceMetrics' => { 'width' => 375, 'height' => 812, 'pixelRatio' => 3.0 },
          'userAgent' => "Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19"
        }
      }
    )
  )
end
