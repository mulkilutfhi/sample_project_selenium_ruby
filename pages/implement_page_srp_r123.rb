require_relative '../locators/locator_srp_r123'
require_relative '../libraries/assert'

class Implement_filter_price_srp < Filter_price
  def initialize
    super()
  end

  def validate_title_srp
    expect_to_equal('Residensial dijual di Bandung',@title_srp.text)
  end

  def set_filter_price (min,max)
    @token_filter_price.click
    @input_price_min.send_keys(min)
    @input_price_max.send_keys(max)
    @button_show_filter_price.click
  end
end

class Implement_filter_landsize_srp < Filter_landsize
  def set_filter_land_size (landsize_min,lanssize_max)
    @token_filter_lt.click
    @input_filter_lt_min.send_keys(landsize_min)
    @input_filter_lt_max.send_keys(lanssize_max)
    @button_show_filter_lt.click
  end
end

class Implement_filter_buildingsize_srp < Filter_buildingsize
  def set_filter_building_size(buildingsize_min, buildingsize_max)
    @token_filter_lb.click
    @input_filter_lb_min.send_keys(buildingsize_min)
    @input_filter_lb_max.send_keys(buildingsize_max)
    @button_show_filter_lb.click
  end
end

class Implement_advance_filter < Advance_filter
  def urutkan
    array_urutkan = @section_urutkan
    
    @token_advance_filter.click
    for index in (0...array_urutkan.length)
      puts index.bit_length
    end

  end
end

