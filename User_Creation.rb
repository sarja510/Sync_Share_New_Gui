require "selenium-webdriver"




module User_Creation

	def User_Creation.AdminRegistration(driver,server)

		driver.find_element(:id, "email").send_keys("tanim@nilavo.com")
		driver.find_element(:id, "password").send_keys("1234")
		driver.find_element(:xpath, '//button[@type="submit"]').click
		driver.find_element(:xpath, '//span[@class="glyphicon glyphicon-wrench"]').click
		driver.find_element(:link, "Manage Users").click
		#driver.navigate.to "http://192.168.10.188/sync/#/user/"
		sleep(5)
		driver.find_element(:link,"Action").click
		driver.find_element(:link, "Create new user").click

	#User sarja1
		driver.find_element(:name, "name").send_keys("sarja1")
		driver.find_element(:name,"email").send_keys("sarja1@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja1")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja1")
		driver.find_element(:xpath, '//input[@class="ng-pristine ng-valid" and @type="checkbox" and @ng-model="user.active"]').click
		#driver.find_element(:css, "input.ng-valid.ng-dirty").click
		driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click
		sleep(5)


		driver.find_element(:link,"Action").click
		driver.find_element(:link, "Create new user").click

	#User sarja2
		driver.find_element(:name, "name").send_keys("sarja2")
		driver.find_element(:name,"email").send_keys("sarja2@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja2")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja2")
		driver.find_element(:xpath, '//input[@class="ng-pristine ng-valid" and @type="checkbox" and @ng-model="user.active"]').click
		#driver.find_element(:css, "input.ng-valid.ng-dirty").click
		driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click
		sleep(5)


		driver.find_element(:link,"Action").click
		driver.find_element(:link, "Create new user").click

	#User sarja3
		driver.find_element(:name, "name").send_keys("sarja3")
		driver.find_element(:name,"email").send_keys("sarja3@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja3")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja3")
		driver.find_element(:xpath, '//input[@class="ng-pristine ng-valid" and @type="checkbox" and @ng-model="user.active"]').click
		#driver.find_element(:css, "input.ng-valid.ng-dirty").click
		driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click
		sleep(5)


		driver.find_element(:link,"Action").click
		driver.find_element(:link, "Create new user").click

	#User sarja4
		driver.find_element(:name, "name").send_keys("sarja4")
		driver.find_element(:name,"email").send_keys("sarja4@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja4")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja4")
		driver.find_element(:xpath, '//input[@class="ng-pristine ng-valid" and @type="checkbox" and @ng-model="user.active"]').click
		#driver.find_element(:css, "input.ng-valid.ng-dirty").click
		driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click
		sleep(5)

	end

	def User_Creation.SelfRegistration(driver,server)


	#User sarja1 self registration
		driver.find_element(:link, "Create an account").click
		driver.find_element(:name, "name").send_keys("sarja1")
		driver.find_element(:name,"email").send_keys("sarja1@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja1")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja1")
		sleep(10)
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm" and @ng-click="continueToLogin()" and @type="submit"]').click
		sleep(5)

	#User sarja2 self registration
		driver.find_element(:link, "Create an account").click
		driver.find_element(:name, "name").send_keys("sarja2")
		driver.find_element(:name,"email").send_keys("sarja2@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja2")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja2")
		sleep(10)
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm" and @ng-click="continueToLogin()" and @type="submit"]').click
		sleep(5)

	#User sarja3 self registration
		driver.find_element(:link, "Create an account").click
		driver.find_element(:name, "name").send_keys("sarja3")
		driver.find_element(:name,"email").send_keys("sarja3@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja3")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja3")
		sleep(10)
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm" and @ng-click="continueToLogin()" and @type="submit"]').click
		sleep(5)

	#User sarja4 self registration
		driver.find_element(:link, "Create an account").click
		driver.find_element(:name, "name").send_keys("sarja4")
		driver.find_element(:name,"email").send_keys("sarja4@nilavodev.com")
		driver.find_element(:name,"password").send_keys("Sarja4")
		driver.find_element(:name,"confirmPassword").send_keys("Sarja4")
		sleep(10)
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm" and @ng-click="continueToLogin()" and @type="submit"]').click
		sleep(5)


	end



end