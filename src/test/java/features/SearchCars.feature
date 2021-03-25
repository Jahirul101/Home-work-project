#Author: mdjahirulchowdhury@gmail.com
Feature: Search a desired Car from UI and validate if its selected in the application
@search_car
	Scenario: As a user I should be able to search a used honda pilot car within my price range 
	and desired distance from my zipcode. 
		Given I am on the Cars Home Page
		When I select Used Cars from the New and Used Cars Dropdown
			And I select Honda from the make dropdown
			And I select Pilot from the model dropdown
			And I select $50,000 from the price dropdown
			And I select 100 Miles from from the distance dropdown
			And I enter 60008 in the zipcode textbox
#			And I wait 3.0 seconds
			And I click the Search button
		Then I verify the Filter Options contain the text "Honda"
			And I verify the Filter Options contain the text "50,000"
		