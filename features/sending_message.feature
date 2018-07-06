Feature: Writing and sending a message
	As a user
	In order to get in contact with other users
	I would like to be able to send them messages

	Background:
		Given I am logged in and at my Inbox page

	Scenario: Compose Email [Happy path]
		When I press the 'Compose' button
		Then I should be able to select a 'Recipient' by 'name'
		And I fill out field 'Subject' with 'my subject'
		And I fill out field 'Message' with 'my message'
		And I click button 'Send Message'
		Then I should see the text 'Your message was successfully sent!'
		And a message should be sent to 'Recipient'
		And I should see the message on my 'Sent Page'
	
	Scenario: User does not choose a Recipient [Sad path]
		When I select Recipient with name ''
		And I fill out field 'Subject' with 'my subject'
		And I fill out field 'Message' with 'my message'
		Then I should see error message 'A recipient is needed'

	Scenario: User does not choose a Subject [Sad Path]
		When I select Recipient with by 'name'
		And I fill out field 'Subject' with ''
		And I fill out field 'Message' with 'my message'
		Then I should see error message 'Fill in a subject'		


		