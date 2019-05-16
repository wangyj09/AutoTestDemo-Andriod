# encoding: UTF-8

require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'


class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('../appium.txt', __FILE__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }
