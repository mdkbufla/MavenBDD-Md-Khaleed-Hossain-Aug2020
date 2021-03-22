Feature: Validate Login

Background: 
	Given User is on the Techfios login page 
@AccountLogin
Scenario Outline: Login different way

	When User enters "<userName>" and "<password>" 
	And User clicks on signin button 
	Then User should land on Dashboard page
	When User clicks on bank and cash
	And User clicks on new account 
	And User fill up the from entering "<AccountTitle>" and "<Description>" and "<InitialBalance>" and "<AccountNumber>" and "<ContactPerson>" and "<Phone>" and "<Internet Banking URL>" 
	And Clicks on submit
	And User should be able to see validate

Examples: 
|username| password|Account Title|Description|Initial Balance|Account Number|Contact Person|Phone|Internet Banking URL|
|demo@techfios.com |abc123|life Insurance Account|Saving|20000|6938333385|Peter Smidth|2135551212|demo.internetbank| 
 
