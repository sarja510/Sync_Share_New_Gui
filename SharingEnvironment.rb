require "selenium-webdriver"
require "rubygems"
require "SignIn"



module SharingEnvironment

	def SharingEnvironment.Creation(driver,server)

		SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		sleep(5)

# TC 1.2.2

		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/div/div/button').click
		driver.find_element(:link, "Add Sub Folder").click
		sleep(5)
		driver.find_element(:xpath,'//input[@id="folder-name"]').send_keys("Folder 1")
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm ng-binding" and @ng-disabled="!form.$dirty" and @type="submit"]').click
		sleep(5)

#TC 1.2.3
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td/a[2]/span').click
		driver.find_element(:id,"uploadTitle").click
		sleep(5)

		driver.switch_to.frame("uploadFrame")
		driver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\File1.txt"
		sleep(5)
		driver.find_element(:id, "html5-uploader-close-button").click
		driver.switch_to.default_content
		sleep(5)

#TC 1.2.4
		driver.find_element(:link, "Home").click
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/div/div/button').click
		driver.find_element(:link, "Add Sub Folder").click
		sleep(5)
		driver.find_element(:xpath,'//input[@id="folder-name"]').send_keys("Folder 2")
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm ng-binding" and @ng-disabled="!form.$dirty" and @type="submit"]').click
		sleep(5)

		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[2]/td/a[2]/span').click
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/div/div/button').click
		driver.find_element(:link, "Add Sub Folder").click
		sleep(5)
		driver.find_element(:xpath,'//input[@id="folder-name"]').send_keys("Sub folder 1")
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm ng-binding" and @ng-disabled="!form.$dirty" and @type="submit"]').click
		sleep(5)
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr/td/a[2]/span').click
		driver.find_element(:id,"uploadTitle").click
		driver.switch_to.frame("uploadFrame")
		driver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\File2.txt"
		sleep(5)
		driver.find_element(:id, "html5-uploader-close-button").click
		driver.switch_to.default_content

#1.2.5
		driver.find_element(:link, "Home").click
		driver.find_element(:id,"uploadTitle").click
		driver.switch_to.frame("uploadFrame")
		driver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\File3.txt"
		sleep(5)
		driver.find_element(:id, "html5-uploader-close-button").click
		driver.switch_to.default_content
		driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		driver.find_element(:link, "Logout").click



		sleep(10)


	end

	def SharingEnvironment.Folder_creation_with_uploading_permission(driver,server)

		SignIn.UserSignIn(driver,server,"sarja1@nilavodev.com","1234")
		sleep(5)

		driver.find_element(:link, "Home").click
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/div/div/button').click
		driver.find_element(:link, "Add Sub Folder").click
		sleep(5)
		driver.find_element(:xpath,'//input[@id="folder-name"]').send_keys("Public Folder")
		driver.find_element(:xpath,'//button[@class="btn btn-primary btn-sm ng-binding" and @ng-disabled="!form.$dirty" and @type="submit"]').click
		sleep(5)
		driver.navigate.refresh
		sleep(2)
#TC 1.2.3
		driver.find_element(:xpath,'//body[@id="ng-app"]/div/div[3]/div[2]/table/tbody/tr[3]/td[2]/a[2]/span').click
		driver.find_element(:id,"uploadTitle").click
		sleep(5)

		driver.switch_to.frame("uploadFrame")
		driver.find_element(:id,"html5-input-file").send_keys "C:\\Users\\Sarja\\RubymineProjects\\sync_share_uploadfiles\\Public file 1.txt"
		sleep(5)
		driver.find_element(:id, "html5-uploader-close-button").click
		driver.switch_to.default_content
		sleep(5)
		driver.find_element(:xpath, '//body[@id="ng-app"]/div/div/div/div[2]/ul/li/a').click
		driver.find_element(:link, "Logout").click

	end
end
