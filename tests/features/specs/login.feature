Feature:Login

Background: Access login Page
        * access login page
@doing

Scenario: Valid Login

    Given I have a valid "marcoshslima@hotmail.com" and "m@rcos87"
    When I do Login 
    Then I should see the message 
    """
    Olá, Marcos
    """
    And I do log out
    Then I should see the message
    """
    Bem vindo :) Entre ou cadastre-se
    """

Scenario: Invalid login
    Given I have a list of invalid emails and passwords
      | email                  | password  | message                                     |
      | abc.abc                | Zavaa1234 | Insira um CPF, CNPJ ou E-mail válido.       |
      | bsz@g.com              | Zavaa1234 | Verifique o login e a senha para continuar. |
      | bruno_zava@hotmail.com | Zavaa1234 | Verifique o login e a senha para continuar. |
    When I try to Login
    Then a message should be displayed in login page