

那么(/^点击已订业务，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='已订业务']").click 
wait_xpath("//android.widget.TextView[@text='套餐']") 
puts "进入模块为：" + driver.find_element(:id,"com.sitech.ac:id/title_text_over").text
end

那么(/^点击套餐各业务，进行查询$/) do 
#wait_xpath("//android.widget.TextView[@text='套餐']")  
wait_xpath("//android.widget.TextView[@text='增值业务']")  
wait_xpath("//android.widget.TextView[@text='基础功能']") 
wait_xpath("//android.widget.TextView[@text='其他']") 

end
