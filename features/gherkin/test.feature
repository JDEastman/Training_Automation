Feature: Training Examples


  Scenario: Potential Candidate can search for a job
    Given the user navigates to the Experis website
    And the user clicks enter as a job seeker
    And the country value defaults to United States
    And the language value defaults to English
    And the user clicks the go button
    When the application navigates to the Experis Jobs page
    And the user fills the Experis Jobs page with local quality assurance
    And the user clicks search for jobs
    Then the page displays the job results section

  Scenario: Verify language pick list values - Colombia
    Given a user navigates to the Experis website
    And the user clicks enter as a job seeker
    When the user fills in "Colombia" for country
    Then the pick list values for language are correct


  Scenario: Validate working with experis paragraph
    Given a user navigates to the Experis website
    And the user clicks enter as a job seeker
    And the user clicks the go button
    When the application navigates to the Experis Jobs page
    Then the text for working with experis is displayed in the working with experis paragraph

  Scenario: Validate experis continued support paragraph
    Given a user navigates to the Experis website
    And the user clicks enter as a job seeker
    And the user clicks the go button
    When the application navigates to the Experis Jobs page
    And the user clicks the experis continued support
    Then the text for experis continued support is displayed

  @run
  Scenario: Validate testing website
    Given the user navigates to the testing website


