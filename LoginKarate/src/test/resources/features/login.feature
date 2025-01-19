Feature: Login Success Test

  Background:
    Given driver 'https://opensource-demo.orangehrmlive.com/web/index.php/auth/login'

  Scenario: Successful Login
    Given input("input[name='username']", 'Admin')
    And input("input[name='password']", 'admin123')
    When click("button[type='submit']")
    Then waitForUrl('dashboard')
    And match driver.title == 'OrangeHRM'

  Scenario: Invalid Login
    Given input("input[name='username']", 'Admin')
    And input("input[name='password']", 'admin1234')
    When click("button[type='submit']")
    Then waitFor('div[role="alert"]')  # Espera el mensaje de error
    And match text('div[role="alert"]').contains('Invalid')