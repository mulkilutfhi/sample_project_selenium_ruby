require_relative '../libraries/locator'
include Libraries

class Homepage_r123

  attr_reader :button_account
  attr_reader :field_username
  attr_reader :field_password
  attr_reader :button_login
  attr_reader :searchbar_homepage
  attr_reader :button_cari
  attr_reader :error_message_login_form
  attr_reader :blank_message_login_username
  attr_reader :blank_message_login_password

  def initialize
    @button_account = Locator.new(:css,'.button-account')
    @field_username = Locator.new(:css,'[name="email"]')
    @field_password = Locator.new(:css,'[name="password"]')
    @button_login = Locator.new(:css,'.ui-molecules-login-form-r123__button > button')
    @searchbar_homepage = Locator.new(:css,'[maxlength="80"]')
    @button_cari = Locator.new(:css,'[data-test-id="search-button"]')
    @error_message_login_form = Locator.new(:css,'.ui-molecules-login-form-r123 > .ui-molecules-login-form-r123__error-badge')
    @blank_message_login_username = Locator.new(:css,'.ui-atomic-edit-text__error-text:nth-of-type(2)')
    @blank_message_login_password = Locator.new(:css,'.ui-atomic-edit-text__error-text:nth-of-type(4)')
  end
end