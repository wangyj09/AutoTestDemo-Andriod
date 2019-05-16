
那么(/^点击账单，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='账单']").click 
wait_xpath("//android.widget.TextView[@text='05月']")  
puts "进入模块为：" + driver.find_element(:id,"com.sitech.ac:id/title_text_over").text
end

那么(/^点击3、4、5月账单，进行查询$/) do 

#wait_xpath("//android.widget.TextView[@text='05月']")  
wait_xpath("//android.widget.TextView[@text='04月']")  
wait_xpath("//android.widget.TextView[@text='03月']")  

end