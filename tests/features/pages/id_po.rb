class IdPage <SitePrism::Page
    set_url '/cliente/login/'
    element :email_cad, '.SignupBox-form-input'
    element :cad_button, '.SignupBox-form-continue'
    element :email, '.LoginBox-form-input'
    element :password, '.LoginBox-form-input-password'
    element :login_button, '.LoginBox-form-continue'
    element :ver_pagina, 'input[type=checkbox]'
    element :message_error, '.LoginBox-form-error--unique'
    element :message_error_mail, '.LoginBox-form-error--below'
    element :login_error, '.LoginBox-form-input--withError'
    
    def do_login(email, password)
        self.email.set email
        self.password.set password
        self.login_button.click
    end   

    def add_customer(email_cad)
       self.email_cad.set email_cad
       self.cad_button.click 
    end    
    
    def cleanfields
        self.login_error.set ''
        self.password.set ''
    end   

end    