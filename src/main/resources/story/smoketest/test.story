Description:Sign Up to the trello

Scenario: Open Trello main page

Given I am on the main application page
When I click on element located `By.xpath(//*[text()='Sign Up'])`
When I go to the relative URL 'signup'
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup"])`
When I enter `<password>` in field located `By.xpath(//input[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then the element with the xpath '//div[@class='sc-eHgmQL fdgziR']' exists for '5' seconds

Examples:
|email                             |password  |
|#{generate(Internet.emailAddress)}|Password1!|
|#{generate(Internet.emailAddress)}|Password2!|