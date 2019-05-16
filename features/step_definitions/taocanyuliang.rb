
那么(/^进入我的移动页面$/) do 
    test1=Login.new
    test1.intoMyMobile
end

那么(/^点击套餐余量，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='套餐余量']").click 
wait_xpath("//android.widget.TextView[@text='语音']") 
puts "进入模块为：" + driver.find_element(:id,"com.sitech.ac:id/title_text_over").text
end

那么(/^点击语音短信彩信，进行查询$/) do 
#wait_xpath("//android.widget.TextView[@text='语音']")  

wait_xpath("//android.widget.TextView[@text='短信']")  

wait_xpath("//android.widget.TextView[@text='彩信']") 


end
