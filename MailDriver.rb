$LOAD_PATH  << '.'
require "selenium-webdriver"
require "rubygems"
require "MailCheck"
require "mail"
require "SignIn"



module MailDriver

	def MailDriver.GetLink(username,password)

		link=	MailCheck.SharedItemsMail("#{username}","#{password}")
		profile = Selenium::WebDriver::Firefox::Profile.new
		@maildriver = Selenium::WebDriver.for :firefox, :profile =>"automation"
		#@maildriver = Selenium::WebDriver.for :firefox
		#@maildriver = Selenium::WebDriver.for :chrome
		#@maildriver = Selenium::WebDriver.for :internet_explorer
		@maildriver.manage.window.maximize
		@maildriver.get "#{link}"
		sleep(5)

	end

	def MailDriver.MailFolderOne (username,password)

		MailDriver.GetLink("#{username}","#{password}")

# TC 2.2.7

		if  @maildriver.page_source.include?"Log In"

			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep (5)

		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end
		sleep(5)
		if @maildriver.page_source.include?"Incorrect username or password."
			@maildriver.quit
		else
		@maildriver.find_element(:xpath,'//body[@id="ng-app"]/div/div[2]/div[2]/table/tbody/tr/td/a/span').click
		#@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
		sleep(15)
		@maildriver.quit
		end
	end

	def MailDriver.MailFolderOneWithAuth (username,password)

		MailDriver.GetLink("#{username}","#{password}")

# TC 2.2.7

		if  @maildriver.page_source.include?"Log In"

			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep (5)

		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end
		sleep(5)
		if @maildriver.page_source.include?"Incorrect username or password."
			@maildriver.quit
		else
			@maildriver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td/a/span').click
			#@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
			sleep(15)
			@maildriver.quit
		end
	end









	def MailDriver.MailFolderTwo (username,password)

		MailDriver.GetLink("#{username}","#{password}")

		if  @maildriver.page_source.include?"Log In"

			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep(5)

		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end

		sleep(5)
		#@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
		@maildriver.find_element(:xpath,'//body[@id="ng-app"]/div/div[2]/div[2]/table/tbody/tr/td/a[2]/span').click
		sleep(2)
		@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
		sleep(15)
		@maildriver.quit
	end





	def MailDriver.MailFolderTwoWithAuth (username,password)

		MailDriver.GetLink("#{username}","#{password}")

		if  @maildriver.page_source.include?"Log In"

			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep(5)

		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end

		sleep(5)
		#@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
		@maildriver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td/a[2]/span').click
		sleep(2)
		@maildriver.find_element(:css,'span.ignore-context-menu-click.ng-binding').click
		sleep(15)
		@maildriver.quit
	end





	def MailDriver.MailPublicFolderWithAuth(username,password)

		MailDriver.GetLink("#{username}","#{password}")

# TC 2.2.7

		if  @maildriver.page_source.include?"Log In"

			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep (5)
			if @maildriver.page_source.include?"Accept and Continue"
				puts "into the loop"
				@maildriver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm submit-btn ng-binding" and @type="submit"]').click
				sleep(15)
			end


		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     if @maildriver.page_source.include?"Accept and Continue"
				     puts "into the loop"
				     @maildriver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm submit-btn ng-binding" and @type="submit"]').click
				     sleep(15)
				   end
		     end

		end
		sleep(5)
		if @maildriver.page_source.include?"Incorrect username or password."
			@maildriver.quit
		else
			@maildriver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td/a/span').click
			sleep(5)
			@maildriver.navigate.refresh
			@maildriver.find_element(:id,"uploadTitle").click
			sleep(5)

			@maildriver.switch_to.frame("uploadFrame")
			@maildriver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\Public file 2.txt"
			sleep(5)
			@maildriver.find_element(:id, "html5-uploader-close-button").click
			@maildriver.switch_to.default_content
			sleep(5)
			@maildriver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
			@maildriver.find_element(:link, "Logout").click


			@maildriver.quit
		end

	end







	def MailDriver.MailFileThree (username,password)

		MailDriver.GetLink("#{username}","#{password}")

		if  @maildriver.page_source.include?"Log In"
			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep(5)


		else if @maildriver.page_source.include?"User Registration"
		     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
		     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
		     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
		     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     sleep(5)
		     @maildriver.find_element(:id, "password").send_keys("#{password}")
		     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end

		sleep(5)
	@maildriver.find_element(:css, 'span.ignore-context-menu-click.ng-binding').click
		sleep(15)
		@maildriver.quit
	end



	def MailDriver.MailFileThreeWithAuth (username,password)

		MailDriver.GetLink("#{username}","#{password}")

		if  @maildriver.page_source.include?"Log In"
			@maildriver.find_element(:id, "password").send_keys("#{password}")
			@maildriver.find_element(:xpath, '//button[@type="submit"]').click
			sleep(5)


		else if @maildriver.page_source.include?"User Registration"
			     @maildriver.find_element(:xpath, '//input[@name="name"]').send_keys("#{username}")
			     @maildriver.find_element(:xpath, '//input[@name="password"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//input[@name="confirmPassword"]').send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
			     sleep(5)
			     @maildriver.find_element(:id, "password").send_keys("#{password}")
			     @maildriver.find_element(:xpath, '//button[@type="submit"]').click
		     end

		end

		sleep(5)
		@maildriver.find_element(:css, 'span.ignore-context-menu-click.ng-binding').click
		sleep(15)
		@maildriver.quit
	end









end