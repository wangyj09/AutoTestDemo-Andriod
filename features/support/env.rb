# encoding: UTF-8

require 'em/pure_ruby'
require 'appium_lib'

caps   = { caps:   { platformName: 'Android',
                     appActivity: 'com.cmcc.sjyyt.activitys.WelcomeActivity',#app的Activity名
                     appPackage: 'com.sitech.ac',#app的包名
                     deviceName: '6f62bef2',#设备名
                     unicodeKeyboard: 'True',
                     udid:'6f62bef2',#设备id
                     noReset:'True'
},
           appium_lib: { sauce_username: nil, sauce_access_key: nil } }

begin
  driver = Appium::Driver.new(caps,true).start_driver
  Appium.promote_appium_methods Object
rescue
  puts("启动失败")
end

def wait_id(value)

    0.upto (15) do |i|
    
        if  exists { id(value) }
            driver.find_element(:id,value).click
            break
        else
           if i>=15
               raise "11"
           end
            sleep 0.5      
        end
    end
end
def wait_xpath(value)

    0.upto (15) do |i|
    
        if  exists { xpath(value) }
            driver.find_element(:xpath,value).click
            break
        else
           if i>=15
               raise "11"
           end
            sleep 0.5      
        end
    end
end

