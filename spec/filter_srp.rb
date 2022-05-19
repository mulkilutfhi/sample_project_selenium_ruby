require_relative '../spec/spec_helper'
require_relative '../pages/implement_page_srp_r123'
require_relative '../libraries/driver'
require 'selenium-webdriver'

describe ('test filter srp') do
  before_each_step do
    @@driver = Driver.new
    @@filter_price_srp = Implement_filter_price_srp.new
    @@filter_landsize_srp = Implement_filter_landsize_srp.new
    @@filter_buildingsize = Implement_filter_buildingsize_srp.new
    @@advance_filter = Implement_advance_filter.new
    @@driver.get("https://www.rumah123.com/jual/residensial")
  end
  after_all do
    @@driver.quit
  end


  it ('test filter token') do
    step ('set filter price') do
      @@filter_price_srp.set_filter_price("500000000","1000000000")
      @@filter_price_srp.token_filter_price.click

      value_min_price = @@filter_price_srp.input_price_min.attribute('value')
      value_max_price = @@filter_price_srp.input_price_max.attribute('value')
      expect_to_equal("500 Juta ",value_min_price)
      expect_to_equal("1 Miliar ",value_max_price)
    end

    step ('set filter land size') do
      @@filter_landsize_srp.set_filter_land_size(
        '70',
        '100'
      )
      @@filter_landsize_srp.button_show_filter_lt.click

      value_min_landsize = @@filter_landsize_srp.input_filter_lt_min.attribute('value')
      value_max_landsize = @@filter_landsize_srp.input_filter_lt_max.attribute('value')
      expect_to_equal('70',value_min_landsize)
      expect_to_equal('100',value_max_landsize)
    end

    step ('set filter building size') do
      @@filter_buildingsize.set_filter_building_size(
        "36",
        "45"
      )
      @@filter_buildingsize.button_show_filter_lb.click

      value_min_buildingsize = @@filter_buildingsize.input_filter_lb_min.attribute('value')
      value_max_buildingsize = @@filter_buildingsize.input_filter_lb_max.attribute('value')
      expect_to_equal('36',value_min_buildingsize)
      expect_to_equal('45',value_max_buildingsize)
    end

    step ('advance filter') do
      @@advance_filter.urutkan
    end
  end

end