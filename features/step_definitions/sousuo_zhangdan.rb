require 'em/pure_ruby'
require 'appium_lib'


当(/^移动惠生活app正常启动$/) do 

#caps   = { caps:   { platformName: 'Android',
#                     appActivity: 'com.cmcc.sjyyt.activitys.WelcomeActivity',#app的Activity名
#                     appPackage: 'com.sitech.ac',#app的包名
#                     deviceName: '6f62bef2',#设备名
#                     unicodeKeyboard: 'True',
#                     udid:'6f62bef2'#设备id
#},
#           appium_lib: { sauce_username: nil, sauce_access_key: nil } }
#
#begin
#  driver = Appium::Driver.new(caps,true).start_driver
#  Appium.promote_appium_methods Object
#rescue
#  puts("启动失败")
#end
end

那么(/^进入移动惠生活登录页面进行登录$/) do
    test1=Login.new
    begin
        wait_id("com.sitech.ac:id/cancel_update")
    rescue

    end
    #test1.intoHomePage
    test1.intoMyMobile
   # login_phone=driver.find_element(:id,"com.sitech.ac:id/mine_phone_name").text
    if  exists {text("请点此登录")}
        driver.find_element(:id,"com.sitech.ac:id/mine_phone_name").click  
        wait_id("com.sitech.ac:id/phone_number")
        wait_id("com.sitech.ac:id/phone_number")         
        driver.find_element(:id,"com.sitech.ac:id/phone_number").send_keys $phone  
        wait_id("com.sitech.ac:id/key")
        driver.find_element(:id,"com.sitech.ac:id/key").send_keys $pwd   
        wait_id("com.sitech.ac:id/image_logo")        
        driver.find_element(:id,"com.sitech.ac:id/login_btn").click
        sleep 5
        if  exists { id("com.sitech.ac:id/marketing_dialog_close") }
            driver.find_element(:id,"com.sitech.ac:id/marketing_dialog_close").click
        end
               
    else
        puts "用户已经登录"
    end
    if exists {text("请点此登录")}
        puts "登陆失败"
    else
        puts "登录成功！"
    end
    
end

那么(/^进入移动惠生活首页$/) do 

    #puts "进入首页.."
    if  exists { id("com.sitech.ac:id/cancel_update") }
        driver.find_element(:id,"com.sitech.ac:id/cancel_update").click
    end
    if  exists { id("com.sitech.ac:id/user_image") }
        puts "进入首页完成！"
    else
        while  exists { id("com.sitech.ac:id/title_back_over") }
            driver.find_element(:id,"com.sitech.ac:id/title_back_over").click
        end     
        while  exists { id("com.sitech.ac:id/search_back") }
            driver.find_element(:id,"com.sitech.ac:id/search_back").click
        end 
        if  exists { xpath("//android.widget.TextView[@text='首页']") }
            driver.find_element(:xpath,"//android.widget.TextView[@text='首页']").click        
        end
        if  exists { id("com.sitech.ac:id/user_image") }
            puts "进入首页完成！"
        else 
            puts "未找到元素"
        end
    end


end

那么(/^点击优惠活动，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='优惠活动']").click 
wait_xpath("//android.view.View[@text='热门']")  
puts "进入模块为：" + driver.find_element(:id,"com.sitech.ac:id/title_text_over").text
wait_xpath("//android.view.View[@text='宽带']")  
wait_xpath("//android.view.View[@text='号卡']")  
wait_xpath("//android.view.View[@text='流量']") 


end
