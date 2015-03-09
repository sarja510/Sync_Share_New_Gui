require "selenium-webdriver"
require "rubygems"
require "SignIn"
require "MailDriver"
require "MailCheck"




module SharingBehaviour



	   def SharingBehaviour.ShareWithRegisteredUser(driver,server)

		   SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		   sleep(3)


#TC 2.2.2
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja2 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
		   driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)


		   MailDriver.MailFolderOne("sarja2","1234")
		   sleep(5)

#TC 2.2.3
		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja3 with sign in")
		   sleep (7)
		   #driver.find_element(:xpath, '//input[@type="checkbox"])[5]').click
			 sleep(5)
		   #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)
		   driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFolderOneWithAuth("sarja3","1234")
		   sleep(5)





#TC 2.2.4
		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with sarja2 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
		   driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFolderTwo("sarja2","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with sarja3 with sign in")
		   sleep(7)
		   #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)
		   driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFolderTwoWithAuth("sarja3","1234")
		   sleep(5)
#TC 2.2.5
		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3 with sarja2 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFileThree("sarja2","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3  with sarja3 with sign in")
		   sleep(7)
		   driver.find_element(:xpath,'//div[@id="shareLink"]/div/div/div/form/fieldset/div[3]/div[2]/div/input').click
		   sleep(2)
		   driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)
		   MailDriver.MailFileThreeWithAuth("sarja3","1234")
		   sleep(10)
		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		   driver.find_element(:link, "Logout").click

	   end

	   def SharingBehaviour.ShareWithUnregisteredUser(driver,server)

		   SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		   sleep(3)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with unregistered user sarja5 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
		   driver.find_element(:id, "token-input-").send_keys("sarja5@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)
		   MailDriver.MailFolderOne("sarja5","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with unregistered user sarja5 with sign in")
		   sleep(7)
			 #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)
		   driver.find_element(:id, "token-input-").send_keys("sarja5@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFolderOneWithAuth("sarja5","1234")
		   sleep(5)


		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)
		   #driver.find_element(:id, "token-input-").send_keys("sarja6@nilavodev.com")

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with unregistered user sarja6 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
		   driver.find_element(:id, "token-input-").send_keys("sarja6@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)


		   MailDriver.MailFolderTwo("sarja6","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with unregistered user sarja6 with sign in")
		   sleep (7)
		   #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep (2)
		   driver.find_element(:id, "token-input-").send_keys("sarja6@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)


		   MailDriver.MailFolderTwoWithAuth("sarja6","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3 with unregistered user sarja7 without sign in")
		   sleep(7)
		   driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(5)
		   driver.find_element(:id, "token-input-").send_keys("sarja7@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)

		   MailDriver.MailFileThree("sarja7","1234")
		   sleep(5)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3  with unregistered user sarja7 with sign in")
		   sleep(7)
		   driver.find_element(:xpath,'//div[@id="shareLink"]/div/div/div/form/fieldset/div[3]/div[2]/div/input').click
		   sleep(2)
		   driver.find_element(:id, "token-input-").send_keys("sarja7@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)
		   MailDriver.MailFileThreeWithAuth("sarja7","1234")
		   sleep(10)

		   driver.navigate.refresh
		   sleep(5)
		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		   driver.find_element(:link, "Logout").click

	   end

		 def SharingBehaviour.ShareWithMultipleUser(driver,server)



			 SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
			 sleep(3)
#TC 2.2.2
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[3]/span').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja2 and sarja4 without sign in")
			 sleep(7)
			 driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
			 sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com sarja4@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)

			 MailDriver.MailFolderOne("sarja2","1234")
			 sleep(2)
			 MailDriver.MailFolderOne("sarja4","1234")
			 sleep(5)

#TC 2.2.3

			 driver.navigate.refresh
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja3 and sarja2 with sign in")
			 sleep(7)
			 #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
			 sleep(2)
			 driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com sarja2@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)
			 MailDriver.MailFolderOneWithAuth("sarja3","1234")
			 sleep(2)

			 MailDriver.MailFolderOneWithAuth("sarja2","1234")
			 sleep(5)
#TC 2.2.4
			 driver.navigate.refresh
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with sarja2 and sarja4 without sign in")
			 sleep(7)
			 driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
			 sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com sarja4@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)

			 MailDriver.MailFolderTwo("sarja2","1234")
			 sleep(2)
			 MailDriver.MailFolderTwo("sarja4","1234")
			 sleep(5)

			 driver.navigate.refresh
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 2 with sarja3 and sarja2 with sign in")
			 sleep(7)
			 #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)
			 driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com sarja2@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)


			 MailDriver.MailFolderTwoWithAuth("sarja3","1234")
			 sleep(2)

			 MailDriver.MailFolderTwoWithAuth("sarja2","1234")
			 sleep(5)
#TC 2.2.5
			 driver.navigate.refresh
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3 with sarja2 and sarja4 without sign in")
			 sleep(7)
			 driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
			 sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com sarja4@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)


			 MailDriver.MailFileThree("sarja2","1234")
			 sleep(2)
			 MailDriver.MailFileThree("sarja4","1234")
			 sleep(5)


			 driver.navigate.refresh
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
			 sleep(5)

			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share File 3  with sarja3 and sarja2 with sign in")
			 sleep(7)
			 driver.find_element(:xpath,'//div[@id="shareLink"]/div/div/div/form/fieldset/div[3]/div[2]/div/input').click
			 sleep(2)
			 driver.find_element(:id, "token-input-").send_keys("sarja3@nilavodev.com sarja2@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
			 sleep(2)
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)
			 MailDriver.MailFileThreeWithAuth("sarja3","1234")
			 sleep(2)
			 MailDriver.MailFileThreeWithAuth("sarja2","1234")
			 sleep(10)
			 driver.navigate.refresh
			 sleep(5)
			 driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
			 driver.find_element(:link, "Logout").click



end

	   def SharingBehaviour.ShareWithUploadingPermission(driver,server)

		   SharingEnvironment.Folder_creation_with_uploading_permission(driver,server)

		   SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		   sleep(3)

		   driver.navigate.refresh

		   driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[3]/span').click
		   driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
		   #driver.find_element(:css, 'contextMenu > li > a.ng-binding').click
		   sleep(5)

		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Public Folder with sarja2 with sign in and with uploading permission")
		   sleep(7)
		   #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   driver.find_element(:css, 'div.indent > div.col-xs-9 > div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)
		   #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
		   sleep(2)

		   driver.find_element(:id, "token-input-").send_keys("sarja2@nilavodev.com")
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').click
		   sleep(2)
		   driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
		   sleep(30)
		   MailDriver.MailPublicFolderWithAuth("sarja2","1234")
		   sleep(10)
		   driver.navigate.refresh
		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		   driver.find_element(:link, "Logout").click
		   sleep(5)
		   SignIn.UserSignIn(driver,server,"sarja2@nilavodev.com","1234")
		   sleep(3)

		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div/ul/li[3]/a/span[2]').click
		   sleep(5)
		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div[2]/div[2]/table/tbody/tr/td/a[2]/span').click
		   sleep(3)
		   driver.navigate.refresh
		   driver.find_element(:id,"uploadTitle").click
		   sleep(5)

		   driver.switch_to.frame("uploadFrame")
		   driver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\Public file 3.txt"
		   sleep(5)
		   driver.find_element(:id, "html5-uploader-close-button").click
		   driver.switch_to.default_content
		   sleep(5)
		   driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		   driver.find_element(:link, "Logout").click





	   end


		 def SharingBehaviour.ShareWithPendingUser(driver,server)

			 SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
			 sleep(3)

#Pending user sarja8 creation

=begin
			 driver.find_element(:xpath, '//span[@class="glyphicon glyphicon-wrench"]').click
			 driver.find_element(:link, "Manage Users").click
			 sleep(5)

				 driver.find_element(:link,"Action").click
				 driver.find_element(:link, "Create new user").click
				 sleep(5)

				 driver.find_element(:name, "name").send_keys("sarja8")
				 driver.find_element(:name,"email").send_keys("sarja8@nilavodev.com")
				 driver.find_element(:name,"password").send_keys("1234")
				 driver.find_element(:name,"confirmPassword").send_keys("1234")
				 driver.find_element(:xpath, '//body[@id="ng-app"]/div/div[3]/div[2]/form/fieldset/span[4]/div/div/div[3]/label/input').click
				 driver.find_element(:xpath, '//button[@class="btn btn-primary btn-sm ng-binding" and @type="submit"]').click

				 sleep(5)

 ##########

#TC 2.2.2
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div/ul/li/a/span[2]').click
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja8@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja8 without sign in")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)


			MailDriver.MailFolderOne("sarja8","1234")
			sleep(5)
=end


			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div/ul/li/a/span[2]').click
			 sleep(2)
			 driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td[2]').click
			 driver.find_element(:xpath, '(//a[contains(text(),"Share")])[2]').click
			 sleep(5)
			 driver.find_element(:id, "token-input-").send_keys("sarja8@nilavodev.com")
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[2]/div/textarea').send_keys("Share Folder 1 with sarja8 without sign in")
			 sleep(5)
			 #driver.find_element(:css, 'div.checkbox.ng-binding > input.ng-pristine.ng-valid').click
			 driver.find_element(:xpath, '//div[@id="shareLink"]/div/div/div/form/fieldset/div[4]/div/button').click
			 sleep(30)

			 MailDriver.MailFolderOne("sarja8","1234")
			 sleep(5)






		 end

end