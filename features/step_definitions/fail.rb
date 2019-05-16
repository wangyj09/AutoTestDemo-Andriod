
那么(/^点击领奖中心，进行查询操作$/) do 
driver.find_element(:xpath,"//android.widget.TextView[@text='失败']").click 
sleep 1

end
