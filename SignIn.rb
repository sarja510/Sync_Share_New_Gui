require "selenium-webdriver"

module SignIn


	def SignIn.UserSignIn(driver,server,username,password)

		driver.find_element(:id, "email").clear
		driver.find_element(:id, "password").clear
		driver.find_element(:id, "email").send_keys("#{username}")
		driver.find_element(:id, "password").send_keys("#{password}")
		driver.find_element(:xpath, '//button[@type="submit"]').click
		if driver.page_source.include?"Accept and Continue"
			puts "into the loop"
			driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm submit-btn ng-binding" and @type="submit"]').click
			sleep(15)


		end

	end

end