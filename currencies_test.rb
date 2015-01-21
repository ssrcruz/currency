require 'minitest/autorun'
require 'minitest/pride'
require './currencies'

class CurrenciesTest < MiniTest::Test

  def test_00_currency_class_exist
    assert Currency
  end

  def test_01_currency_amount
    assert Currency.new("", "")
  end

  def test_02_currency_equals
    your_dollars = Currency.new(10, "USD")
    other_dollars = Currency.new(10, "USD")
    assert_equal true, your_dollars == other_dollars
  end


  def test_03_currency_adds
    your_dollars = Currency.new(10, "USD")
    other_dollars = Currency.new(5, "USD")
    assert true, your_dollars + other_dollars
  end

  def test_04_currency_subtracts
    your_dollars = Currency.new(10, "USD")
    other_dollars = Currency.new(1, "USD")
    assert true, your_dollars - other_dollars
  end

end
