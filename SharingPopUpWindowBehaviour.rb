require "selenium-webdriver"
require "rubygems"
require "SignIn"



module SharingPopUpWindowBehaviour

	  def SharingPopUpWindowBehaviour.PopupWindow(driver,server)

		  SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		  sleep(3)
#TC 2.1.2
		  driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		  driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		  sleep(5)
#TC 2.1.4
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div/div/div/ul/li/input').send_keys("testmailaddress")
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/a').click
		  sleep(5)
#TC 2.1.6
		  driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		  driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		  sleep(5)
#TC 2.1.8
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div/div/div/ul/li/input').send_keys("sarja@.com")
		  driver.find_element(:id, "message").click
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		  sleep(2)
		  driver.find_element(:xpath, '//button[@class="close" and @type="button"]').click
		  sleep(3)
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/a').click #Error log will be included
		  sleep(3)

#TC 2.1.11
		  driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		  driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		  sleep(5)
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[3]/div[2]/div/input').click
		  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/a').click
		  sleep(3)
		  driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		  driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		  sleep(5)
  	  driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/a').click
		  sleep(3)
		  driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		  driver.find_element(:link, "Logout").click


	  end




end