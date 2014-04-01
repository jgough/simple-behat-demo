Feature: Registration
  In order to sign up on the website
  As a website visitor
  I need to be able to enter my details to register for the site

Scenario: Basic registration
  Given I am on the homepage
  When I fill in "name" with "Bob Smith"
  And I fill in "email" with "test@example.com"
  And I press "Register"
  Then I should see "successful"

Scenario: Invalid email
  Given I am on the homepage
  When I fill in "name" with "Bob Smith"
  And I fill in "email" with "blah"
  And I press "Register"
  Then I should see "Error"
  And I should see "Invalid email address"

Scenario: Invalid email with retry
  Given I am on the homepage
  When I fill in "name" with "Bob Smith"
  And I fill in "email" with "blah"
  And I press "Register"
  Then I should see "Error"
  And I should see "Invalid email address"
  When I fill in "email" with "test@example.com"
  And I press "Register"
  Then I should see "successful"

Scenario: No name
  Given I am on the homepage
  When I fill in "email" with "test@example.com"
  And I press "Register"
  Then I should see "Error"
  And I should see "Name is a required field"
