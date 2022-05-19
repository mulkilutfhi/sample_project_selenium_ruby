require_relative '../libraries/locator'
include Libraries

class Filter_price
  attr_reader :title_srp
  attr_reader :token_filter_price
  attr_reader :input_price_min
  attr_reader :input_price_max
  attr_reader :button_show_filter_price

  def initialize
    @title_srp = Locator.new(:css,'[data-test-id="srp-title"] > div > h1')
    @token_filter_price = Locator.new(:css,'.ui-organism-search-filter-r123__wrapper-section > div:nth-child(3)')
    @input_price_min = Locator.new(:css,'[name="price_from"]')
    @input_price_max = Locator.new(:css,'[name="price_to"]')
    @button_show_filter_price = Locator.new(:css,'.ui-organisms-price-filter__footer__action-button--button-show')
  end
end

class Filter_landsize
  attr_reader :token_filter_lt
  attr_reader :input_filter_lt_min
  attr_reader :input_filter_lt_max
  attr_reader :button_show_filter_lt

  def initialize
    @token_filter_lt = Locator.new(:css,'.ui-organism-search-filter-r123__wrapper-section > div:nth-child(4)')
    @input_filter_lt_min = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[2]/div[1]/div/div[2]/div/div[1]/div/input')
    @input_filter_lt_max = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[2]/div[1]/div/div[2]/div/div[3]/div/input')
    @button_show_filter_lt = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[2]/div[1]/div/div[3]/div/button[2]')
  end
end

class Filter_buildingsize
  attr_accessor :token_filter_lb
  attr_accessor :input_filter_lb_min
  attr_accessor :input_filter_lb_max
  attr_accessor :button_show_filter_lb

  def initialize
    @token_filter_lb = Locator.new(:css,'.ui-organism-search-filter-r123__wrapper-section > div:nth-child(5)')
    @input_filter_lb_min = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[3]/div[1]/div/div[2]/div/div[1]/div/input')
    @input_filter_lb_max = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[3]/div[1]/div/div[2]/div/div[3]/div/input')
    @button_show_filter_lb = Locator.new(:xpath,'//*[@id="99-root-app"]/div/div/div[1]/div/div[2]/div[3]/div[1]/div/div[3]/div/button[2]')
  end
end

class Advance_filter
  attr_accessor :token_advance_filter
  attr_accessor :section_urutkan

  def initialize
    @token_advance_filter = Locator.new(:css,'.ui-organism-search-filter-r123__wrapper-section > div:nth-child(1)')
    @section_urutkan = Locator.new(:css,'.r123-advanced-filter__content--item:nth-child(1) > section > div > label')
  end
end