require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../models/word_formatter'

class TestWordFormatter < Minitest::Test
  
  def setup

    @address = {
        address: '3 ARGYLE HOUSE',
        building: 'CODEBASE',
        postcode: 'e13 zqf',
        phone: '0131558030'
    } 

  end


  def test_fix_postcode
    fixed_postcode = "E13 ZQF"
    assert_equal(fixed_postcode, WordFormatter.upcase(@address[:postcode]) )
  end

  def test_camel_case
    fixed = "CodeClanWobble"
    assert_equal(fixed, WordFormatter.camel_case("code clan wobble"))


  end


end