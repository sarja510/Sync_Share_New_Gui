$LOAD_PATH  << '.'
require "selenium-webdriver"
require "rubygems"
#require "UserCreation"
require "SharingEnvironment"
require "SharingPopUpWindowBehaviour"
require "SharingBehaviour"
require "SharedFileFolderOperation"

#require "MailCheck"

	puts "Choose Browser \n1.FireFox \n2.Chrome \n3.IE \nEnter the number to select the browser:"
	choice=gets.chomp.to_i



case
	when choice==1
		server="http://192.168.10.188/sync"
		#server="http://stagingsync.biscom.com/sync"
		#server="http://192.168.10.252:8080/sync"
		#server="http://192.168.10.201/sync"
		profile = Selenium::WebDriver::Firefox::Profile.new
		#@driver = Selenium::WebDriver.for :firefox, :profile =>"automation"
		@driver = Selenium::WebDriver.for :firefox
		@driver.manage.window.maximize
		@driver.get "#{server}"

		SharingEnvironment.Creation(@driver,server)
		SharingPopUpWindowBehaviour.PopupWindow(@driver,server)
		SharingBehaviour.ShareWithRegisteredUser(@driver,server)
		SharingBehaviour.ShareWithUnregisteredUser(@driver,server)
		SharingBehaviour.ShareWithMultipleUser(@driver,server)
		SharingBehaviour.ShareWithUploadingPermission(@driver,server)
		SharedFileFolderOperation.SharedFolderOperationWithAuthenticationAndUploadingPermission(@driver,server)



	when choice==2
		#server="http://192.168.10.188/sync"
		server="http://192.168.10.188/sync"
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.window.maximize
		@driver.get "#{server}"

		SharingEnvironment.Creation(@driver,server)
		SharingPopUpWindowBehaviour.PopupWindow(@driver,server)
		SharingBehaviour.ShareWithRegisteredUser(@driver,server)
		SharingBehaviour.ShareWithUnregisteredUser(@driver,server)
		SharingBehaviour.ShareWithMultipleUser(@driver,server)
		SharingBehaviour.ShareWithUploadingPermission(@driver,server)
		SharedFileFolderOperation.SharedFolderOperationWithAuthenticationAndUploadingPermission(@driver,server)



	when choice==3
		server="http://192.168.10.188/sync"
		#server="http://192.168.10.201/sync"
		@driver = Selenium::WebDriver.for :internet_explorer
		@driver.manage.window.maximize
		@driver.get "#{server}"
		#UserCreation.AdminRegistration(@driver,server)
		#UserCreation.SelfRegistration(@driver,server)
		SharingEnvironment.Creation(@driver,server)
		SharingPopUpWindowBehaviour.PopupWindow(@driver,server)
		SharingBehaviour.ShareWithRegisteredUser(@driver,server)
		SharingBehaviour.ShareWithUnregisteredUser(@driver,server)
		SharingBehaviour.ShareWithMultipleUser(@driver,server)
		#SharingBehaviour.ShareWithPendingUser(@driver,server)


	else
		puts "Wrong choice"

end



