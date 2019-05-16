#coding:utf-8
require 'em/pure_ruby'
require 'appium_lib'


class Login



def step_login(phone,pwd)

    begin
        wait_id("com.sitech.ac:id/cancel_update")
    rescue

    end
    #intoHomePage
    intoMyMobile
    if  text("请点此登录")
        driver.find_element(:id,"com.sitech.ac:id/mine_phone_name").click  
        wait_id("com.sitech.ac:id/phone_number")
        wait_id("com.sitech.ac:id/phone_number")         
        driver.find_element(:id,"com.sitech.ac:id/phone_number").send_keys phone  
        wait_id("com.sitech.ac:id/key")
        driver.find_element(:id,"com.sitech.ac:id/key").send_keys pwd  
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
        puts "--------------登录成功！-------------"
    end
    
end
##进入我的移动页面
def intoMyMobile
   # puts "进入我的移动.."
   # if  !exists { id("com.sitech.ac:id/integral_content") }
   #     driver.find_element(:xpath,"//android.widget.TextView[@text='我的移动']").click  
   # end
   if  exists {  id("com.sitech.ac:id/integral_content") }
        puts "进入我的移动完成！"
    else
        while  exists { id("com.sitech.ac:id/title_back_over") }
            driver.find_element(:id,"com.sitech.ac:id/title_back_over").click
        end     
        while  exists { id("com.sitech.ac:id/search_back") }
            driver.find_element(:id,"com.sitech.ac:id/search_back").click
        end 
        if  exists { xpath("//android.widget.TextView[@text='我的移动']") }
            driver.find_element(:xpath,"//android.widget.TextView[@text='我的移动']").click        
        end
        if  exists {  id("com.sitech.ac:id/integral_content") }
            puts "进入我的移动完成！"
        else 
            puts "未找到元素"
        end
    end

end
def intoHomePage
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
            puts "未找到元素 首页-新版状态位头像 ，进入首页失败！"
        end
    end

end

def logout
    puts "Step logout-登录"
    intoHomePage
    intoMyMobile
    if exists {text("请点此登录")}
        puts "当前未登陆,无需退出登录！"
        
    else
        driver.find_element(:id,"com.sitech.ac:id/mine_setting_img").click
        Appium::Core::Wait.until(timeout: 20){exists { id("com.sitech.ac:id/mine_setting_img") }}
        driver.find_element(:id,"com.sitech.ac:id/btn_logout").click
        Appium::Core::Wait.until(timeout: 20){exists { id("com.sitech.ac:id/phone_number") }}
        puts "退出登录成功" 
         
    end



end





end



