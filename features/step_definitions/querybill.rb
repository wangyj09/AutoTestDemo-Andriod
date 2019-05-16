# encoding: UTF-8

当("点击账单") do
    driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView[1]/android.widget.LinearLayout[1]/android.widget.TextView").click
end

那么("进入账单页面") do
    sleep(3)
    actual = exists { id("去充值") }
    expect(actual).to eq(false)
end

当("点击往月账单") do
     today = Time.new
     mouth = today.strftime("%m").to_i
     #puts mouth
     driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[6]/android.widget.TextView").click
     sleep(1)
     driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[5]/android.widget.TextView").click
     sleep(1)
     driver.find_element(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.RelativeLayout[4]/android.widget.TextView").click
end

当("进入往月账单页面") do
    sleep(3)
    actual = exists { id("当月可用") }
    expect(actual).to eq(false)
end
