require_relative 'spec_helper'
require_relative '../pages/implement_page_srp_r123.rb'
require_relative '../pages/implement_page_homepage_r123.rb'

describe ("search and validate title") do
  before_each_step do
    @@driver = Driver.new
    @@driver.get('https://www.rumah123.com')
    @@homepage = Implement_homepage.new
    @@srp = Implement_srp.new
  end

  after_all do
    @@driver.quit
  end

  it("test login")do
    step("login with wrong email")do
      @@homepage.go_to_login_form
      @@homepage.login_input_username_password(
        '123.qa.automation@gmail.co',
        'rumahnya123'
      )
      @@homepage.click_login
      text_alert = @@homepage.error_message_login_form.text
      expect_to_equal(text_alert,'Kombinasi Username dan Password tidak ditemukan')
    end

    step("login with wrong password")do
      @@homepage.go_to_login_form
      @@homepage.login_input_username_password(
        '123.qa.automation@gmail.com',
        'rumahnya12'
      )
      @@homepage.click_login
      text_alert = @@homepage.error_message_login_form.text
      expect_to_equal(text_alert,'Kombinasi Username dan Password tidak ditemukan')
    end

    step('login with blank username and password') do
      @@homepage.go_to_login_form
      @@homepage.field_username.clear
      @@homepage.field_password.clear
      @@homepage.click_login
      text_blank_alert_username = @@homepage.blank_message_login_username.text
      text_blank_alert_password = @@homepage.blank_message_login_password.text
      expect_to_equal(text_blank_alert_username,'Mohon isi Email')
      expect_to_equal(text_blank_alert_password,'Mohon isi Password')


    end
  end


end