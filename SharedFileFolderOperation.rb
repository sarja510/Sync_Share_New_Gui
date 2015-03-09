require "selenium-webdriver"
require "rubygems"
require "SignIn"
#require "MailDriver"
#require "MailCheck"




module SharedFileFolderOperation

	  def SharedFileFolderOperation.SharedFolderOperationWithAuthenticationAndUploadingPermission(driver,server)

		  SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		  sleep(3)
		  driver.navigate.refresh
		  sleep(2)
		  driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[3]/span').click
		  driver.find_element(:xpath, '(//a[contains(text(),"Rename")])[2]').click
		  sleep(2)
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div/div/input').clear
		  sleep(1)
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div/div/input').send_keys("Rename public")
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div[3]/div/button').click
		  sleep(2)
		  driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]/a[2]/span').click
		  sleep(2)
		  driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[3]').click
		  sleep(2)
		  driver.find_element(:xpath, '(//a[contains(text(),"Rename")])[4]').click
		  sleep(1)
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div/div/input').clear
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div/div/input').send_keys("Rename public file 1.txt")
		  driver.find_element(:xpath, '//div[@id="renameItem"]/div/div/div/form/fieldset/div[3]/div/button').click
		  sleep(2)
		  MailDriver.MailPublicFolderWithAuth("sarja2","1234")
		  sleep(10)



	  end

	  def SharedFileFolderOperation.SharedFolderOperationWithAuthentication(driver,server)

	  end

		def SharedFileFolderOperation.SharedFolderOperationWithoutAuthentication(driver,server)
		end

		def SharedFileFolderOperation.SharedFileOperationWithAuthentication(driver,server)

		end

		def SharedFileFolderOperation.SharedFileOperationWithoutAuthentication(driver,server)

		end

		def SharedFileFolderOperation.SharedFileFolderOperationFromSharedLinkTab(driver,server)

		end


end