require "selenium-webdriver"
require "rubygems"



module   AutoUser

	#server="http://192.168.10.211:8080/sync"
	server="http://192.168.10.188/sync"
	#server="http://192.168.10.201/sync"
	#server="http://192.168.10.252:8080/sync"
	profile = Selenium::WebDriver::Firefox::Profile.new
	@driver = Selenium::WebDriver.for :firefox
	@driver.manage.window.maximize
	@driver.get "#{server}"




	@driver.find_element(:id, "email").clear
	@driver.find_element(:id, "password").clear
	@driver.find_element(:id, "email").send_keys("sarja1@nilavodev.com")
	@driver.find_element(:id, "password").send_keys("1234")
	@driver.find_element(:xpath, '//button[@type="submit"]').click
	if @driver.page_source.include?"Accept and Continue"
		puts "into the loop"
		@driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm submit-btn ng-binding" and @type="submit"]').click
		#sleep(5)
	end
	sleep(3)
	@driver.navigate.refresh
	sleep(3)
	@driver.find_element(:xpath, '//span[@class="glyphicon glyphicon-wrench"]').click
	@driver.find_element(:link, "Manage Users").click
	sleep(2)


	for i in 2..5
		@driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/div/div/button').click
		@driver.find_element(:link, "Create new user").click
		sleep(2)

		@driver.find_element(:name, "name").send_keys("sarja#{i}")
		@driver.find_element(:name,"email").send_keys("sarja#{i}@nilavodev.com")
		@driver.find_element(:name,"password").send_keys("1234")
		@driver.find_element(:name,"confirmPassword").send_keys("1234")
		#@driver.find_element(:xpath, '//input[@class="ng-pristine ng-valid" and @type="checkbox" and @ng-model="user.active"]').click
		@driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div[2]/form/fieldset/span[4]/div/div/div[2]/label/input').click
		#driver.find_element(:css, "input.ng-valid.ng-dirty").click
		@driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click

		sleep(2)

	end



end