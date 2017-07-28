
class NavPAge <SitePrism::Page
    element :welcome_message , '.js-identify'
    element :log_out ,  'logout';

    def do_logout
        self.log_out.click
    end    


 end   