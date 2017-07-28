Given(/^access login page$/) do
    idPage.load
end


Given(/^I have a valid "([^"]*)" and "([^"]*)"$/) do |email, pass|
    @email = email
    @pass = pass
end

When(/^I do Login$/) do
    idPage.do_login(@email, @pass)
end

Then(/^I should see the message "([^"]*)"$/) do |msg|
    nav.wait_for_welcome_message
    expect(nav.welcome_message.text).to have_content msg
end


#try to login
Given(/^I have a list of invalid emails and passwords$/) do |table|
  @users = table.hashes 
end

When(/^I try to Login$/) do
   
    @messages = Array.new
    @messages_specs = Array.new    

    @users.each do |tabela|
        idPage.do_login(tabela['email'],tabela['password'])
        #sleep(3)

        if tabela['message'].eql?('Insira um CPF, CNPJ ou E-mail válido.') 
            @messages.push(idPage.message_error_mail.text)
        else
            @messages.push(idPage.message_error.text)
        end    

       # @massages.push(idPage.message_error_mail.text) if idPage.message_error_mail
       # @massages.push(idPage.message_error.text) if idPage.message_error

        @messages_specs.push(tabela['message'])
        idPage.cleanfields        

    end    

end

Then(/^a message should be displayed in login page$/) do
  
end