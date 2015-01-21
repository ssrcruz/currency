require 'minitest/autorun'
require 'minitest/pride'
require './currencies'
require './different_currency_code_error'

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
    added_currency = your_dollars + other_dollars
    assert_equal 15, added_currency
  end

  def test_04_currency_subtracts
    your_dollars = Currency.new(10, "USD")
    other_dollars = Currency.new(1, "USD")
    subtracted_currency = your_dollars - other_dollars
    assert_equal 9, subtracted_currency
  end

  def test_05_different_currency_code_error
    your_dollars = Currency.new(10, "USD")
    other_dollars = Currency.new(5, "Pesos")
    assert_raises(DifferentCurrencyCodeError) do
      your_dollars - other_dollars
    end
    assert_raises(DifferentCurrencyCodeError) do
      your_dollars + other_dollars
    end
  end

  def test_06_multiply_fixnum_float
    your_dollars = Currency.new(10, "USD")
        assert_equal 44, your_dollars * 4.4  
  end

end
