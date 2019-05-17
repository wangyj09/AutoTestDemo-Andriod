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

After do |scenario|
    if scenario.failed?
    	puts "报错截图："
    	addScreenshot("#{Time.now.strftime("%Y%m%d%H%M%S")}_error")
    end
    $driver.driver_quit
end

# 添加截图
def addScreenshot(name)
    driver.save_screenshot("./Screenshot/" + name + ".png")
	sleep 1 #防止脚本立即退出时截图为空
    puts '<img src="' + 'Screenshot/'+name+'.png"' + ' style="width: 80px; height: 100px">'
end
