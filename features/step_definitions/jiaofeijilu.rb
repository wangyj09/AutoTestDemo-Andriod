

那么(/^点击交费记录，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='交费记录']").click 
wait_id("com.sitech.ac:id/title_text_over")
puts "进入模块为：" + driver.find_element(:id,"com.sitech.ac:id/title_text_over").text
end

那么(/^点击本号交费记录和为他人交费记录，进行查询$/) do 
wait_xpath("//android.widget.TextView[@text='本号交费记录']")
wait_xpath("//android.widget.TextView[@text='为他人交费记录']")

end
