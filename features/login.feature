Feature: Login

Scenario: Sucessful login with valid credentials
	Given user launched chrome browser
	When user opens URL "https://admin-demo.nopcommerce.com/login"
	And user enters Email as "admin@yourstore.com" and password as "admin"
	And click on login
	Then page title should be "Dashboard / nopCommerce administration"
	When user click on logout link
	Then page ctitle should be "Your store Login"
	And close browser
	
	@regression
Scenario Outline: Login Data Driven 
	Given User Launch Chrome browser 
	When User opens URL "http://admin-demo.nopcommerce.com/login" 
	And User enters Email as "<email>" and Password as "<password>" 
	And Click on Login 
	Then Page Title should be "Dashboard / nopCommerce administration" 
	When User click on Log out link 
	Then Page Title should be "Your store. Login" 
	And close browser 
	
	Examples: 
		| email | password |
		| admin@yourstore.com	|	admin |
		| admin1@yourstore.com | admin123	|
	