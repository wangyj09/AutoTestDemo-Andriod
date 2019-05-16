# encoding: UTF-8

当("点击我的移动") do
    sleep(5)
    driver.find_element(:id, "com.sitech.ac:id/tab_5").click
end

当("点击请点击登录") do
    sleep(1)
    driver.find_element(:id, "com.sitech.ac:id/mine_phone_name").click
end

当("输入手机号") do
    sleep(5)
    driver.find_element(:id,"com.sitech.ac:id/phone_number").send_keys "15056173938"

end

当("输入密码") do
    sleep(1)
    driver.find_element(:id, "com.sitech.ac:id/key").send_keys "199321"
end

当("点击服务密码登录") do
    sleep(1)
    driver.find_element(:id, "com.sitech.ac:id/login_btn").click
end

当("等待 {int} 秒") do |int|
  sleep(int.to_i)
end

那么("进入登入页面") do
    sleep(3)
    actual = exists { id("查看详情") }
    expect(actual).to eq(false)
end
