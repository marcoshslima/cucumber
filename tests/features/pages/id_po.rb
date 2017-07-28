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

    element :email_error, '.LoginBox-form-input--withError'
    element :password_error, '.LoginBox-form-input-password--withError'

    def do_login(email, password)
        self.email.set email if self.has_email?
        self.email_error.set email if self.has_email_error?
        self.email.send_keys(:tab)
        self.password.set password if self.has_password?
        self.password_error.set password if self.has_password_error?
        self.login_button.click
    end   

    def add_customer(email_cad)
       self.email_cad.set email_cad
       self.cad_button.click 
    end    
    
    def cleanfields
        self.email_error.set '' if self.has_email_error?
        self.password.set '' if self.has_password?
        self.password_error.set '' if self.has_password_error?
        self.email.set '' if self.has_email?
    end   

end    