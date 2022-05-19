require_relative '../locators/locator_homepage_r123'

class Implement_homepage < Homepage_r123
  def initialize
    super()
  end

  def go_to_login_form
    @button_account.click

  end

  def login_input_username_password (username, pass)
    @field_username.send_keys(username)
    if (username == 'blank')
      @field_username.clear
    end
    @field_password.send_keys(pass)
    if (pass == 'blank')
      @field_password.clear
      end
  end

  def click_login
    @button_login.click
  end


  def input_keywords (keywords)
    @searchbar_homepage.send_keys(keywords)
  end

  def click_cari
    @button_cari.click
  end
end